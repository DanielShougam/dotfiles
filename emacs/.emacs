(add-to-list 'load-path "~/.emacs.d/evil")
(add-to-list 'load-path "~/.emacs.d/multi-term")
(require 'evil)
(evil-mode 1)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["black" "#d55e00" "#009e73" "#f8ec59" "#0072b2" "#cc79a7" "#56b4e9" "white"])
 '(custom-safe-themes
   '("8e24f5cca6fc37acd8fb52f1a6879dcfb02c3fb973eb9ebff2cdb8c2da8626ee" default))
 '(inhibit-startup-screen nil)
 '(initial-buffer-choice "/mnt/c/Users/daniel/Documents/uni")
 '(package-selected-packages '(panda-theme)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(require 'multi-term)
(setq multi-term-program "/bin/zsh")

(load-theme 'panda t)

(add-to-list 'default-frame-alist '(fullszreen . maximized))
