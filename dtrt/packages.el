;;; packages.el --- dtrt Layer packages File for Spacemacs
;;
;; Copyright (c) 2012-2014 Sylvain Benner
;; Copyright (c) 2014-2015 Sylvain Benner & Contributors
;;
;; Author: Sylvain Benner <sylvain.benner@gmail.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;; List of all packages to install and/or initialize. Built-in packages
;; which require an initialization must be listed explicitly in the list.
(setq dtrt-packages
    '(
      dtrt-indent
      ;; package names go here
      ))

;; List of packages to exclude.
(setq dtrt-excluded-packages '())

;; For each package, define a function dtrt/init-<package-name>
;;
;; (defun dtrt/init-my-package ()
;;   "Initialize my package"
;;   )
;;
;; Often the body of an initialize function uses `use-package'
;; For more info on `use-package', see readme:
;; https://github.com/jwiegley/use-package

(defun dtrt/init-dtrt-indent ()
  (require 'dtrt-indent)
  (add-hook 'prog-mode-hook '(lambda () (dtrt-indent-mode t))))
