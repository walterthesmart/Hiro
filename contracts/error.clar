;; This function always returns an ok response
(define-public (say-hello)
  (ok "Hello")
)

;; This function attempts to match on a response with an indeterminate err type
(define-public (execute)
  (let ((x (say-hello)))
    (ok (unwrap-panic x))
  )
)

;; Test cases
(execute) ;; Should return (ok "Hello") ;; Should return (ok "Hello")