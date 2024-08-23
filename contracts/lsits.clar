;; Implement the person-tuple-to-list function here
(define-public (person-tuple-to-list (person (tuple (name (string-ascii 50)) (age uint))))
  ;; Your code here
  (let
    (
      (person-name (get name person))
      (person-age (get age person))
      (ageStr (int-to-ascii person-age))
    )
    (ok (list person-name ageStr))
  )
  
)

;; Test cases
(person-tuple-to-list (tuple (name "Bob") (age u25))) ;; Should return (ok (list "Bob" u25))
(person-tuple-to-list (tuple (name "Alice") (age u30))) ;; Should return (ok (list "Alice" u30))