(define-public (process-transaction (amount uint))
  (begin
    (asserts! (<= amount u1000) (err u2))
    (asserts! (>= amount u10) (err u1))
    (ok "Transaction processed")
  )
)

;; Test cases
(process-transaction u5)    ;; Should return (ok "Transaction processed")
(process-transaction u50)   ;; Should return (ok "Transaction processed")
(process-transaction u1500) ;; Should return (err u2)