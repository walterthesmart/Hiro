(define-data-var recentTodos (list 5 (string-ascii 50)) (list))

(define-public (add-todo (todo (string-ascii 50)))
  (let
    (
      (currentTodos (var-get recentTodos))
    )
    (match (as-max-len? (append currentTodos todo) u5) success
      (ok (var-set recentTodos success))
      (err u1) ;; Error code u1 indicates the list is full
    )
  )
)


;; Test cases
(add-todo "Buy groceries") ;; Should add the todo
(add-todo "Call mom") ;; Should add the todo
(add-todo "Finish report") ;; Should add the todo
(add-todo "Go to gym") ;; Should add the todo
(add-todo "Read book") ;; Should add the todo
(add-todo "Learn Clarity") ;; Should return an error (err u1)