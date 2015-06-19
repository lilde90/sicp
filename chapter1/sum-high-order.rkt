#lang racket
(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a)
         (sum term (next a) next b))))

(define (cube x) (* x x x))

(define (sum-cubes a b)
  (sum cube a inc b))

(define (inc a)
  (+ a 1))



(sum-cubes 1 10)
