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

;; Remove startup screen
(setq inhibit-startup-screen t)

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

;; Markdown specific
;; -----------------
(add-hook 'markdown-mode-hook
	  (lambda()
	    ;; Set Markdown command to pandoc (since I usually don't install Markdown)
	    (setq markdown-command "pandoc --from markdown --to html5 --mathjax --highlight-style pygments --standalone")
	    ;; Fold headlines
	    (outline-hide-sublevels 1)
	    ;; Set fill-column to lower value when the window is small
	    ;; to accommodate running in Termux
	    (if (< (max (window-total-height) (window-total-width)) 72) (setq-default fill-column 50))
	    ))
