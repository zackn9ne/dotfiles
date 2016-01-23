(use-package elscreen
  :config
  (custom-set-variables '(elscreen-tab-display-control nil) ; hide control tab at the left side
                        '(elscreen-tab-display-kill-screen nil) ; hide kill button
                        '(elscreen-display-tab t))
  (custom-set-faces '(elscreen-tab-current-screen-face ((t (:inherit default :weight bold)))))
  (global-set-key (kbd "<C-tab>") 'elscreen-next)
  (global-set-key (kbd "<C-S-tab>") 'elscreen-previous)
  (global-set-key [(control shift iso-lefttab)] 'elscreen-previous)
  (global-set-key (kbd "C-q t") 'elscreen-create)
  (global-set-key (kbd "C-q C-t") 'elscreen-create)
  (global-set-key (kbd "C-q x") 'elscreen-kill)
  (bind-key "C-q c" 'elscreen-clone)
  (progn (elscreen-set-prefix-key "\C-q\C-c")
         (bind-keys :map elscreen-map
                    ("C-c" . elscreen-create)
                    ("c"   . elscreen-create)
                    ("C"   . elscreen-clone)
                    ("C-k" . elscreen-kill)
                    ("k"   . elscreen-kill)
                    ("M-k" . elscreen-kill-screen-and-buffers)
                    ("K"   . elscreen-kill-others)
                    ("C-p" . elscreen-previous)
                    ("p"   . elscreen-previous)
                    ("C-n" . elscreen-next)
                    ("n"   . elscreen-next)
                    ("C-a" . elscreen-toggle)
                    ("a"   . elscreen-toggle)
                    ("'"   . elscreen-goto)
                    ("\""  . elscreen-select-and-goto)
                    ("0"   . elscreen-jump-0)
                    ("1"   . elscreen-jump)
                    ("2"   . elscreen-jump)
                    ("3"   . elscreen-jump)
                    ("4"   . elscreen-jump)
                    ("5"   . elscreen-jump)
                    ("6"   . elscreen-jump)
                    ("7"   . elscreen-jump)
                    ("8"   . elscreen-jump)
                    ("9"   . elscreen-jump-9)
                    ("C-s" . elscreen-swap)
                    ("C-w" . elscreen-display-screen-name-list)
                    ("w"   . elscreen-display-screen-name-list)
                    ("C-m" . elscreen-display-last-message)
                    ("m"   . elscreen-display-last-message)
                    ("C-t" . elscreen-display-time)
                    ("t"   . elscreen-display-time)
                    ("A"   . elscreen-screen-nickname)
                    ("b"   . elscreen-find-and-goto-by-buffer)
                    ("C-f" . elscreen-find-file)
                    ("C-r" . elscreen-find-file-read-only)
                    ("d"   . elscreen-dired)
                    ("M-x" . elscreen-execute-extended-command)
                    ("i"   . elscreen-toggle-display-screen-number)
                    ("T"   . elscreen-toggle-display-tab)
                    ("?"   . elscreen-help)
                    ("v"   . elscreen-display-version)
                    ("j"   . elscreen-link)
                    ("s"   . elscreen-split))
         (elscreen-start)
         (use-package elscreen-server)
         (use-package elscreen-persist
           :init
           (elscreen-persist-mode 1))
         ))
;; alias
(defalias 'kill-tab 'elscreen-kill)
(defalias 'kill-tab-and-buffers 'elscreen-kill-screen-and-buffers)
(defalias 'kill-other-tabs 'elscreen-kill-others)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; setkey
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; (elscreen-set-prefix-key "\C-q\C-c")
;; ;; elscreen map
;; (define-key elscreen-map "\C-c" 'elscreen-create)
;; (define-key elscreen-map "c"    'elscreen-create)
;; (define-key elscreen-map "C"    'elscreen-clone)
;; (define-key elscreen-map "\C-k" 'elscreen-kill)
;; (define-key elscreen-map "k"    'elscreen-kill)
;; (define-key elscreen-map "\M-k" 'elscreen-kill-screen-and-buffers)
;; (define-key elscreen-map "K"    'elscreen-kill-others)
;; (define-key elscreen-map "\C-p" 'elscreen-previous)
;; (define-key elscreen-map "p"    'elscreen-previous)
;; (define-key elscreen-map "\C-n" 'elscreen-next)
;; (define-key elscreen-map "n"    'elscreen-next)
;; (define-key elscreen-map "\C-a" 'elscreen-toggle)
;; (define-key elscreen-map "a"    'elscreen-toggle)
;; (define-key elscreen-map "'"    'elscreen-goto)
;; (define-key elscreen-map "\""   'elscreen-select-and-goto)
;; (define-key elscreen-map "0"    'elscreen-jump-0)
;; (define-key elscreen-map "1"    'elscreen-jump)
;; (define-key elscreen-map "2"    'elscreen-jump)
;; (define-key elscreen-map "3"    'elscreen-jump)
;; (define-key elscreen-map "4"    'elscreen-jump)
;; (define-key elscreen-map "5"    'elscreen-jump)
;; (define-key elscreen-map "6"    'elscreen-jump)
;; (define-key elscreen-map "7"    'elscreen-jump)
;; (define-key elscreen-map "8"    'elscreen-jump)
;; (define-key elscreen-map "9"    'elscreen-jump-9)
;; (define-key elscreen-map "\C-s" 'elscreen-swap)
;; (define-key elscreen-map "\C-w" 'elscreen-display-screen-name-list)
;; (define-key elscreen-map "w"    'elscreen-display-screen-name-list)
;; (define-key elscreen-map "\C-m" 'elscreen-display-last-message)
;; (define-key elscreen-map "m"    'elscreen-display-last-message)
;; (define-key elscreen-map "\C-t" 'elscreen-display-time)
;; (define-key elscreen-map "t"    'elscreen-display-time)
;; (define-key elscreen-map "A"    'elscreen-screen-nickname)
;; (define-key elscreen-map "b"    'elscreen-find-and-goto-by-buffer)
;; (define-key elscreen-map "\C-f" 'elscreen-find-file)
;; (define-key elscreen-map "\C-r" 'elscreen-find-file-read-only)
;; (define-key elscreen-map "d"    'elscreen-dired)
;; (define-key elscreen-map "\M-x" 'elscreen-execute-extended-command)
;; (define-key elscreen-map "i"    'elscreen-toggle-display-screen-number)
;; (define-key elscreen-map "T"    'elscreen-toggle-display-tab)
;; (define-key elscreen-map "?"    'elscreen-help)
;; (define-key elscreen-map "v"    'elscreen-display-version)
;; (define-key elscreen-map "j"    'elscreen-link)
;; (define-key elscreen-map "s"    'elscreen-split)
