(setq custom-file "~/.my-linux-env/modules/emacs/custom.el")
(load custom-file)

(load "~/.emacs.d/emacs-c-ide-demo/init.el")

;; emacs-c-ide configuration disables menu bar, let's reenable it here
(menu-bar-mode 1)

(require 'package)

(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)

(when (version<= "26.0.50" emacs-version )
  (global-display-line-numbers-mode))

(split-window-horizontally)
