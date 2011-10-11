(require 'yasnippet)
 
(require 'dropdown-list)
(setq yas/text-popup-function #'yas/dropdown-list-popup-for-template)
 
;; コメントやリテラルではスニペットを展開しない
(setq yas/buffer-local-condition
      '(or (not (or (string= "font-lock-comment-face"
                             (get-char-property (point) 'face))
                    (string= "font-lock-string-face"
                             (get-char-property (point) 'face))))
           '(require-snippet-condition . force-in-comment)))
 
;; yasnippet 公式提供のものと、
;; 自分用カスタマイズスニペットをロード同名のスニペットが複数ある場合、
;; あとから読みこんだ自分用のものが優先される。
;; また、スニペットを変更、追加した場合、
;; このコマンドを実行することで、変更・追加が反映される。
(defun yas/load-all-directories ()
  (interactive)
  (yas/reload-all)
  (mapc 'yas/load-directory-1 my-snippet-directories))
;;; yasnippet展開中はflymakeを無効にする
(defvar flymake-is-active-flag nil)
(defadvice yas/expand-snippet
  (before inhibit-flymake-syntax-checking-while-expanding-snippet activate)
  (setq flymake-is-active-flag
        (or flymake-is-active-flag
            (assoc-default 'flymake-mode (buffer-local-variables))))
  (when flymake-is-active-flag
    (flymake-mode-off)))
(add-hook 'yas/after-exit-snippet-hook
          '(lambda ()
             (when flymake-is-active-flag
               (flymake-mode-on)
               (setq flymake-is-active-flag nil))))
 
(setq yas/root-directory (expand-file-name "~/.emacs.d/snippets"))
;; 自分用スニペットディレクトリ(リストで複数指定可)
(defvar my-snippet-directories
  (list (expand-file-name "~/.emacs.d/mysnippets")))
 
(yas/initialize)
(yas/load-directory yas/root-directory)
(yas/load-all-directories)
