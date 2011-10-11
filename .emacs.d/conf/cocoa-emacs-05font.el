(create-fontset-from-ascii-font "Menlo-14:weight=normal:slant=normal" nil "menlokakugo")
(set-fontset-font "fontset-menlokakugo"
                  'unicode
                  (font-spec :family "Hiragino Kaku Gothic ProN" :size 16)
                  nil
                  'append)

(create-fontset-from-ascii-font "Menlo-14:weight=normal:slant=normal" nil "menlotakaogo")
(set-fontset-font "fontset-menlotakaogo"
                  'unicode
                  (font-spec :family "TakaoGothic" :size 16)
                  nil
                  'append)

(create-fontset-from-ascii-font "-apple-Inconsolata-medium-normal-normal-*-16-*-*-*-m-0-iso10646-1" nil "inconsolatekakugo")
(set-fontset-font "fontset-inconsolatekakugo"
                  'unicode
                  (font-spec :family "Hiragino Kaku Gothic ProN" :size 16)
                  nil
                  'append)

(create-fontset-from-ascii-font "-apple-Inconsolata-medium-normal-normal-*-16-*-*-*-m-0-iso10646-1" nil "inconsolatetakaogo")
(set-fontset-font "fontset-inconsolatetakaogo"
                  'unicode
                  (font-spec :family "TakaoGothic" :size 16)
                  nil
                  'append)

(set-frame-font "fontset-inconsolatetakaogo")
