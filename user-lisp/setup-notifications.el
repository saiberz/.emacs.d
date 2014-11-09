(require 'notifications)

(defun new-notication (title message)
  (notifications-notify :title title :body message))

(new-notication "Welcome!" (get-random-quote))

(provide 'setup-notifications)
