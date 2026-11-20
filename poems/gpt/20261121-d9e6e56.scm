; A Place Kept Open
(define r #f)

(define n
  (call/cc
    (lambda (k)
      (set! r k)
      0)))

(if (= n 0) (r 82) n)
