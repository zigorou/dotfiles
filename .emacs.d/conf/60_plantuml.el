(setq plantuml-jar-path (concat (getenv "HOME") "/bin/plantuml.jar"))
(add-to-list 'auto-mode-alist '("\\.uml$" . plantuml-mode))
(require 'plantuml-mode)
