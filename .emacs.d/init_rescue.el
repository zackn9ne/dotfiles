; always open
(find-file "~/.emacs.d/init.el") 

; no backups
                                                                                    ;    │····························································
(setq make-backup-files nil) ; stop creating backup~ files                          ;    │····························································
(setq auto-save-default nil) ; stop creating #autosave# files                       ;    │····························································

;
(global-hl-line-mode +1)

(setq enable-recursive-minibuffers t)

    
; random # function    
(random t) ; seed it randomly                                                          
                                                                                       
(defun insert-random-number ()                                                         
  "Insert a random number between 0 to 999999."                                        
  (interactive)                                                                        
  (insert (number-to-string (random 999999))) )
