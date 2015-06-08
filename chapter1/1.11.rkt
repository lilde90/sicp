#lang racket
(define (f n)
  (cond ((< n 3) n)
        (else (+ (f (- n 1))
                 (* (f (- n 2)) 2)
                 (* (f (- n 3)) 3)))))

(f 2)
(f 4)
(f 10)

(define (f-iter n)
  (f-non-recursive 0 1 2 n))
(define (f-non-recursive a b c n)
  (cond ((= n 0) a)
        (else (f-non-recursive b c (+ (* 3 a) (* 2 b) c) (- n 1)))))

(f-iter 2)
(f-iter 4)
(f-iter 10)