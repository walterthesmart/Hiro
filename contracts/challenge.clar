(define-public (calculate-average (numbers (list 10 uint)))
  ;; Your code here
  (let
    (
      (length (len numbers))
      (sum (fold + numbers u0))
    )
    (if (and (> length u0) (<= length u10))
      (ok (/ sum length))
      (err u1)
    )
  )
)

;; Test cases
(calculate-average (list u1 u2 u3))  ;; Should return (ok u2)
(calculate-average (list))  ;; Should return an error response


(define-read-only (get-todos (todos (list 10 int)))
  (print todos)
)

(get-todos (list 1 2 3 4 5))