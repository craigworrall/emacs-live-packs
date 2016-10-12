;; User pack init file
;;
;; Use this file to initiate the pack configuration.
;; See README for more information.

;; Load bindings config
(live-load-config-file "bindings.el")

;; disable shimmer at startup ('zoning')
(setq live-disable-zone t)

;; reinstate toolbar
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode 1))
;;(if (fboundp 'tool-bar-mode) (tool-bar-mode 1))
(if (fboundp 'menu-bar-mode) (menu-bar-mode 1))

;; store all backup and autosave files in the tmp dir
;; (so they do not appear in searches etc)
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

;; maximise window
(toggle-frame-maximized)

;; load 'find file at point' bindings
(ffap-bindings)

;; why not start a shell
(shell "my-shell")

;; start js-mode when open relevant files
(add-to-list 'auto-mode-alist '("\\.js$" . js-mode))
(add-to-list 'auto-mode-alist '("\\.json$" . js-mode))
