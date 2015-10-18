;;; packages.el --- ido-all-the-things Layer packages File for Spacemacs
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
(setq ido-all-the-things-packages
      '(ido-ubiquitous
        crm-custom
        ))

;; List of packages to exclude.
(setq ido-all-the-things-excluded-packages '())

;; For each package, define a function ido-all-the-things/init-<package-name>
;;
;; (defun ido-all-the-things/init-my-package ()
;;   "Initialize my package"
;;   )
;;
;; Often the body of an initialize function uses `use-package'
;; For more info on `use-package', see readme:
;; https://github.com/jwiegley/use-package

(defun ido-all-the-things/init-ido-ubiquitous ()
  (ido-ubiquitous-mode t)
  )

(defun ido-all-the-things/init-crm-custom ()
  (crm-custom-mode t)
  )
