;; apt-get install emacs26

(setq show-paren-style 'expression)
(show-paren-mode 2)

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(set-default 'cursor-type 'bar)
(column-number-mode)
(fset 'yes-or-no-p 'y-or-n-p)

;; (add-to-list 'load-path "~/.emacs.d/")
;; emacs --version 26 
(global-display-line-numbers-mode)

(add-to-list 'default-frame-alist '(fullscreen . maximized))


(custom-set-variables
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(custom-enabled-themes (quote (tango-dark))))
(custom-set-faces)
