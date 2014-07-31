;;@saiberz emacs.d configuration

;Load all packages
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

;;TODO:
;;search inspirational quotes to begin to hack
;;

;;----------------------------------------------------------------------------
;;windows-os config
(if (eq system-type 'windows-nt)
    (setq default-directory "~/"))
;;----------------------------------------------------------------------------


;;----------------------------------------------------------------------------
;;Bootstrap configurations

;; Hide menus and scroll and startup message
(setq inhibit-startup-message t)
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))


;; Change initial scractch messsage (it would be better a dynamic phrase)"

(setq-default initial-scratch-message
              (concat ";; Today is a great to code" 
		      (or user-login-name "")
		      "!\n\n" (current-time-string) "\n\n"))
;; Add repositories
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))
;;----------------------------------------------------------------------------


;;----------------------------------------------------------------------------
;;Basic features
(require 'saveplace)
(setq-default save-place t)

;;Searching in the web
(require 'webjump-plus)

(global-set-key (kbd "C-x g") 'webjump)
(setq webjump-sites
         (append '(
                   ("Facebook"   . "www.fb.com/saiberz")
                   )
                 webjump-sample-sites))
;;----------------------------------------------------------------------------

;;----------------------------------------------------------------------------
;;theme customization

;(require-package 'color-theme)

;;----------------------------------------------------------------------------


;;----------------------------------------------------------------------------

;;----------------------------------------------------------------------------


