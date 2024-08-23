;; (define-map Voters principal bool)
;; (define-map VoteCounts principal uint)
;; (define-data-var TotalVotes uint u0)

;; ;; Implement the register-voter function
;; (define-public (register-voter (voter principal))
;;   (begin
;;     (map-set Voters voter true)
;;     (ok true)
;;   )
;; )

;; ;; Implement the cast-vote function
;; (define-public (cast-vote (voter principal) (candidate principal))
;;   (begin
;;     (if (unwrap-panic (map-get? Voters voter))
;;       (begin
;;         (map-set VoteCounts candidate (map-get? VoteCounts candidate 0))
;;         (map-set Voters voter false)
;;         (var-set TotalVotes (+ (var-get TotalVotes) u1))
;;         (ok true)
;;       )
;;       (err u2)
;;     )
    
;;   )
;; )

;; ;; Implement the get-vote-count function
;; (define-read-only (get-vote-count (candidate principal))
;;   (map-get? VoteCounts candidate)
;; )

;; ;; Test cases
;; (register-voter 'ST1PQHQKV0RJXZFY1DGX8MNSNYVE3VGZJSRTPGZGM) ;; Should return (ok true)
;; (cast-vote tx-sender 'ST2CY5V39NHDPWSXMW9QDT3HC3GD6Q6XX4CFRK9AG) ;; Should return (ok true)
;; (cast-vote tx-sender 'ST1PQHQKV0RJXZFY1DGX8MNSNYVE3VGZJSRTPGZGM) ;; Should fail (err u2) already voted
;; (get-vote-count 'ST2CY5V39NHDPWSXMW9QDT3HC3GD6Q6XX4CFRK9AG) ;; Should return (u1)