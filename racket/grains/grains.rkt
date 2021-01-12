#lang racket

(provide square total)

(define (square x)
  (expt 2 (- x 1)))

(define (total)
  (- (expt 2 64) 1))

