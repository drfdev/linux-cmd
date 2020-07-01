;; apt-get install emacs26

(setq show-paren-style 'expression)
(show-paren-mode 2)

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(set-default 'cursor-type 'bar)
(column-number-mode)
(fset 'yes-or-no-p 'y-or-n-p)

;; disable backup
(setq backup-inhibited t)
;; disable auto save
(setq auto-save-default nil)

(set-face-attribute 'default nil :height 160)

;; (add-to-list 'load-path "~/.emacs.d/")
;; emacs --version 26 
(global-display-line-numbers-mode)

(add-to-list 'default-frame-alist '(fullscreen . maximized))


(custom-set-variables
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(custom-enabled-themes (quote (tango-dark))))
(custom-set-faces)


;; reme,ber last session
(desktop-save-mode 1)
;; ru key mapping
(define-key function-key-map [?\C-ч]    [?\C-x])
(define-key function-key-map [?\C-с]    [?\C-c])
(define-key function-key-map [?\C-ы]    [?\C-s])
(define-key function-key-map [?\C-н]    [?\C-y])
(define-key function-key-map [?\C-п]    [?\C-g])
(define-key function-key-map [?\C-к]    [?\C-r])
(define-key function-key-map [?\M-з]    [?\M-p])
(define-key function-key-map [?\M-т]    [?\M-n])
(define-key function-key-map [?\C-ц]    [?\C-w])
(define-key function-key-map [?\M-ц]    [?\M-w])

(define-key function-key-map [?\C-а]    [?\C-f])
(define-key function-key-map [?\C-и]    [?\C-b])
(define-key function-key-map [?\M-а]    [?\M-f])
(define-key function-key-map [?\M-и]    [?\M-b])
(define-key function-key-map [?\C-т]    [?\C-n])
(define-key function-key-map [?\C-з]    [?\C-p])
(define-key function-key-map [?\C-ф]    [?\C-a])
(define-key function-key-map [?\C-у]    [?\C-e])
(define-key function-key-map [?\M-ф]    [?\M-a])
(define-key function-key-map [?\M-у]    [?\M-e])

(define-key function-key-map [?и]       [?b])
(define-key function-key-map [?щ]       [?o])
