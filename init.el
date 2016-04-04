;;; Begin initialization
;; Turn off mouse interface early in startup to avoid momentary display


(when window-system
  (menu-bar-mode -1)
  (tool-bar-mode -1)
  (scroll-bar-mode -1)
  (tooltip-mode -1))

(package-initialize)

(setq inhibit-startup-message t)
(setq initial-scratch-message "")

;;; Load the config
(require 'org)
(defvar config-org (expand-file-name "config.org" (expand-file-name "my-cfg" user-emacs-directory)))
(org-babel-load-file config-org)

