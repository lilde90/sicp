#lang racket
(define (pascal x y)
  (if (= x 1) 1
      (if (= x y) 1
          (+ (pascal x (- y 1)) (pascal (- x 1) (- y 1))))))
(pascal 1 1)
  