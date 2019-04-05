;;; development.el --- Load All Development Configuration

;;; Commentary:
;;; Author: Kyle W. Purdon (kpurdon)
;;;
;;; This file is not part of GNU Emacs.

;;; Code:

(require 'rainbow-delimiters)

(require 'fill-column-indicator)
(setq fci-rule-column 80)
(setq fci-rule-width 1)
(setq fci-rule-use-dashes 0.75)
(setq fci-rule-color "red")

(global-flycheck-mode)

(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)
(add-hook 'prog-mode-hook 'fci-mode)

(require '_python)
(require '_markdown)
(require '_web)
(require '_json)
(require '_js)

(provide 'development)

;;; development.el ends here
