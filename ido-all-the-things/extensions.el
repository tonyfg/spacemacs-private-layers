;;; extensions.el --- ido-all-the-things Layer extensions File for Spacemacs
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

(setq ido-all-the-things-pre-extensions
      '(activate-ido
        find-things-fast
        ;; pre extension names go here
        ))

(setq ido-all-the-things-post-extensions
      '(ido-keybindings
        ;; post extension names go here
        ))

;; For each extension, define a function ido-all-the-things/init-<extension-name>
;;
;; (defun ido-all-the-things/init-my-extension ()
;;   "Initialize my extension"
;;   )
;;
;; Often the body of an initialize function uses `use-package'
;; For more info on `use-package', see readme:
;; https://github.com/jwiegley/use-package

(defun ido-all-the-things/init-activate-ido ()
  ;; (require 'ido)
  (ido-mode t)
  (ido-everywhere t)
  (setq org-completion-use-ido t)
  (setq magit-completing-read-function 'magit-ido-completing-read)
  )

(defun ido-all-the-things/init-find-things-fast ()
  (require 'find-things-fast)
  (setq ftf-filetypes
        '("*.h" "*.hpp" "*.cpp" "*.c" "*.cc" "*.cpp" "*.inl" "*.grd" "*.idl" "*.m"
          "*.mm" "*.py" "*.sh" "*.cfg" "*SConscript" "SConscript*" "*.scons"
          "*.vcproj" "*.vsprops" "*.make" "*.gyp" "*.gypi" "*.rb" "*.js" "*.jsx"
          ".gitignore" "Rakefile" "Gemfile" "*.yml" ".eslintrc" "Capfile" "Procfile"
          "*.md" "*.json"))
  )

(defun ido-all-the-things/init-ido-keybindings ()
  (evil-leader/set-key "bb" 'ido-switch-buffer)
  (evil-leader/set-key "pf" 'ftf-find-file)
  )
