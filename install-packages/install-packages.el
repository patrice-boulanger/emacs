;;; install-packages.el --- Emacs Package Installation

;; Author: Kyle W. Purdon (kpurdon)
;;
;; This file is not part of GNU Emacs.

;;; Commentary:

;;; Code:

(require 'package)

(defvar my-packages
  '(better-defaults
    company
    elpy
    exec-path-from-shell
    fill-column-indicator
    flycheck
    js2-mode
    json-mode
    markdown-mode
    py-autopep8
    py-isort
    rainbow-delimiters
    smart-mode-line
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
