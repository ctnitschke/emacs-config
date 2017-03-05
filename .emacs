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

;; Programming language specific settings
;; ======================================

;; Python specific
;; ---------------

(add-hook 'python-mode-hook
  (lambda ()
    (setq-default indent-tabs-mode nil)
    (setq-default tab-width 4)))

;; HTML specific
;; -------------

(add-hook 'sgml-mode-hook
          (lambda()
            (setq-default indent-tabs-mode nil)
            (set (make-local-variable 'sgml-basic-offset) 2)))
