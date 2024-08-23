(define-map UserProfiles principal { name: (string-ascii 100), age: uint })


(define-read-only (get-profile (who principal))
	;; Your code here
    (default-to { name: "", age: u0} (map-get? UserProfiles who))

)

;; Test cases
(get-profile 'ST1PQHQKV0RJXZFY1DGX8MNSNYVE3VGZJSRTPGZGM) ;; Should return a user
