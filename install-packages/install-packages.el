;;; install-packages.el --- Emacs Package Installation

;; Author: Kyle W. Purdon (kpurdon)
;;
;; This file is not part of GNU Emacs.

;;; Commentary:

;;; Code:

(require 'package)

(defvar my-packages
  '(material
    better-defaults
    company
;;    company-go
    direnv
    elpy
    exec-path-from-shell
    fill-column-indicator
    flycheck
;;    flycheck-golangci-lint
;;    go-add-tags
;;    go-eldoc
;;    go-guru
;;    go-mode
    js2-mode
    json-mode
    magit
    markdown-mode
;;    osx-clipboard
    py-autopep8
    py-isort
    rainbow-delimiters
    smart-mode-line
;;    terraform-mode
    web-mode
    yaml-mode))

(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/"))

(when (not package-archive-contents)
    (package-refresh-contents))
(package-initialize)

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

(provide 'install-packages)

;;; install-packages.el ends here
