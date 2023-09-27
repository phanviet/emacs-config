(setq org-todo-keywords
      '((sequence "TODO" "IN-PROGRESS" "|" "DONE" "CLOSED")))

(defun org-mark-todo-done-if-needed (n-done n-not-done)
  "Switch entry to DONE when all subentries are done, to TODO otherwise."
  (let (org-log-done org-log-states) ; turn off logging
    (org-todo (if (= n-not-done 0)
		  "DONE"
		(if (= n-done 0) "TODO" "IN-PROGRESS")))))



(add-hook 'org-after-todo-statistics-hook #'org-mark-todo-done-if-needed)
