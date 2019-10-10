
(defvar my-directory (if load-file-name
                         ;; File is being loaded.
                         (file-name-directory load-file-name)
                       ;; File is being evaluated using, for example, `eval-buffer'.
                       default-directory))

(defun make-presentation ()
  (interactive)
  (let ((title (read-string "Title: ")))
    (switch-to-buffer (concat title ".org"))
    (set-visited-file-name (concat title ".org"))
    (org-mode)
    (insert "#+title: " title "\n")
    (insert "#+author: " user-full-name "\n")
    (insert "#+REVEAL_PLUGINS: (notes)\n") 
    (insert "#+REVEAL_THEME: active\n")
    (insert "#+REVEAL_HLEVEL: 100\n")
    (insert "#+REVEAL_TRANS: none\n")
    (insert "#+OPTIONS: num:nil toc:nil reveal-center:f reveal_slide_number:nil\n\n")))
