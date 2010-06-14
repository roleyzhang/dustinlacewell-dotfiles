
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Library Paths
;; Note: keep every emacs library underneath ~/.emacs.d 
;; This makes it easier to use this config on multiple 
;; systems.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(add-to-list 'load-path "~/.emacs.d")
;Add all top-level subdirectories of .emacs.d to the load path
(progn (cd "~/.emacs.d")
       (normal-top-level-add-subdirs-to-load-path))
;keep third party libraries seperate in ~/.emacs.d/third-party
(add-to-list 'load-path "~/.emacs.d/third-party")
(progn (cd "~/.emacs.d/third-party")
       (normal-top-level-add-subdirs-to-load-path))

(require 'tramp)
(setq tramp-default-method "scp")

(load-library "_autocomplete")
(load-library "_cedet")
(load-library "_ecb")
;(load-library "_tab")
(load-library "_ido")
(load-library "_python")
;(load-library "_yasnippet")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; basic setup                                                                                                                                                                                            
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Shorter confirmation prompts
(fset 'yes-or-no-p 'y-or-n-p)
(global-set-key (kbd "C-M-m") 'xterm-mouse-mode)


(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(ecb-default-highlight-face ((((class color) (background light)) (:foreground "magenta"))))
 '(ecb-source-in-directories-buffer-face ((((class color) (min-colors 8)) (:foreground "cyan"))))
 '(ecb-source-read-only-face ((((class color) (background light)) (:inherit ecb-default-general-face :background "red" :slant italic))))
 '(font-lock-builtin-face ((((class color) (min-colors 8)) nil)))
 '(font-lock-comment-face ((((class color) (min-colors 8)) (:foreground "green" :weight bold))))
 '(font-lock-constant-face ((((class color) (min-colors 8)) nil)))
 '(font-lock-function-name-face ((t (:foreground "yellow"))))
 '(font-lock-keyword-face ((t (:foreground "black" :weight bold))))
 '(font-lock-preprocessor-face ((t (:foreground "black" :weight bold))))
 '(font-lock-string-face ((((class color) (min-colors 8)) (:foreground "green"))))
 '(font-lock-type-face ((((class color) (min-colors 8)) (:foreground "yellow"))))
 '(mode-line ((t (:foreground "white"))))
 '(mode-line-inactive ((default (:inherit mode-line :foreground "black" :weight bold)) (nil nil)))
 '(nobreak-space ((((class color) (min-colors 8)) nil)))
 '(speedbar-button-face ((((class color) (background light)) (:foreground "white"))))
 '(speedbar-directory-face ((((class color) (background light)) (:foreground "white"))))
 '(speedbar-file-face ((((class color) (background light)) (:foreground "cyan" :weight bold))))
 '(speedbar-selected-face ((((class color) (background light)) (:foreground "red"))))
 '(speedbar-tag-face ((((class color) (background light)) (:foreground "green"))))
 '(vertical-border ((((type tty)) (:foreground "black" :weight bold)))))
  
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(column-number-mode 1)
 '(ecb-layout-name "right14")
 '(ecb-options-version "2.40")
 '(ecb-show-sources-in-directories-buffer (quote always))
 '(ecb-tip-of-the-day nil)
 '(ecb-use-speedbar-instead-native-tree-buffer (quote dir))
 '(ecb-windows-width 0.25)
 '(fill-column 81)
 '(inhibit-startup-echo-area-message t)
 '(inhibit-startup-screen t)
 '(line-number-mode 1)
 '(make-backup-files nil)
 '(scroll-step 1)
 '(standard-indent 4)
 '(tramp-default-user "ldlework"))
