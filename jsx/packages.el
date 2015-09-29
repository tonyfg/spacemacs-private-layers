;;; packages.el --- jsx Layer packages File for Spacemacs
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
(setq jsx-packages '(web-mode flycheck))

;; List of packages to exclude.
(setq jsx-excluded-packages '())

;; For each package, define a function jsx/init-<package-name>
;;
;; (defun jsx/init-my-package ()
;;   "Initialize my package"
;;   )
;;
;; Often the body of an initialize function uses `use-package'
;; For more info on `use-package', see readme:
;; https://github.com/jwiegley/use-package


(defun jsx/init-web-mode ()
  (use-package web-mode
    :defer t
    :mode
    (("\\.jsx\\'" . web-mode))
    :config
    (progn
      (defadvice web-mode-highlight-part (around tweak-jsx activate)
        (if (equal web-mode-content-type "jsx")
            (let ((web-mode-enable-part-face nil))
              ad-do-it)
          ad-do-it)))))

(defun jsx/init-flycheck ()
  (use-package flycheck
    :defer t
    :config
    (progn
      (flycheck-add-mode 'javascript-eslint 'web-mode))))
