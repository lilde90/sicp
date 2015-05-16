#lang racket
(/ (+ 5 4 (- 2 (- 3 (+ 6 (/ 4 5)))))
   (* 3 (- 6 2) (- 2 7)))

(define (square x) (* x x))
(define (sum-of-square x y) (+ (square x) (square y)))
(define (max-two-square x y z) (cond ((> x y) (cond ((> y z) (sum-of-square x y))
                                                    (else (sum-of-square x z))
                                     )) (else (cond ((> x z) (sum-of-square x y))
                                                      (else (sum-of-square y z))
                                                      ))))
(max-two-square 1 3 4)