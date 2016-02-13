(spacemacs|do-after-display-system-init
 (progn
   (add-hook 'after-init-hook 'frame-geometry//load)
   (add-hook 'kill-emacs-hook 'frame-geometry//save)))
