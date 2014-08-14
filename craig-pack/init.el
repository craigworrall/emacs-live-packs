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

