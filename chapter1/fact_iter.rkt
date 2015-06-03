#lang racket
(define (factorial n)
  (if (= n 1)
      1
      (* n (factorial (- n 1)))))

(factorial 9)

(define (factorial-iter n)
  (fact-iter 1 1 n))

(define (fact-iter product counter max_count)
  (if (> counter max_count)
      product
      (fact-iter (* counter product)
                 (+ counter 1)
                 max_count)))
(factorial-iter 9)