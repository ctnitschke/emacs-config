;; Global settings
;; ===============

;; Interface
;; ---------

;; Enable line numbers
(global-linum-mode t)

;; Enable column numbers in mode line
(setq column-number-mode t)

;; Set the default theme
(load-theme 'tango-dark)

;; Melpa repository
;; ----------------
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; Programming language specific settings
;; ======================================

;; Python specific
;; ---------------

(add-hook 'python-mode-hook
  (lambda ()
    (setq-default indent-tabs-mode nil)
    (setq-default tab-width 4)))

;; JavaScript specific
;; -------------------
(add-hook 'js-mode-hook
  (lambda ()
    (setq-default indent-tabs-mode nil)
    (setq-default tab-width 2)))

;; HTML specific
;; -------------

(add-hook 'sgml-mode-hook
          (lambda()
            (setq-default indent-tabs-mode nil)
            (set (make-local-variable 'sgml-basic-offset) 2)))

;; Octave specific
;; ---------------
(setq auto-mode-alist
      (cons '("\\.m$" . octave-mode) auto-mode-alist))

(add-hook 'octave-mode-hook
	  (lambda ()
	    (setq-default indent-tabs-mode nil)
	    (setq-default tab-width 2)))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
