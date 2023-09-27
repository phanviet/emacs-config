(add-to-list 'default-frame-alist '(fullscreen . maximized))
(set-frame-font "Monaco 12" nil t)
(tool-bar-mode -1)

(defconst user-init-dir
  (cond ((boundp 'user-emacs-directory)
	 user-emacs-directory)
	((boundp 'user-init-directory)
	 user-init-directory)
	(t "~/.emacs.d/")))

(defun load-user-file (file)
  (interactive "f")
  (load-file (expand-file-name file user-init-dir)))


(load-user-file "org-mode-custom.el")



;; GLOBAL KEY BINDINGS

(global-set-key (kbd "C-c l") #'org-store-link)
(global-set-key (kbd "C-c a") #'org-agenda)
(global-set-key (kbd "C-c c") #'org-capture)
