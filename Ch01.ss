
(define (square x)
  (* x x))

(square 21)
(square (+ 2 5))
(square (square 3))

(define (sum-of-squares x y)
  (+ (square x) (square y)))

(sum-of-squares 3 4)

(define (f a)
  (sum-of-squares (+ a 1) (* a 2)))

(f 5)

(define (abs-a x)
  (cond ((> x 0) x)
        ((= x 0) 0)
        ((< x 0) (- x))))

(abs-a -10)

(define (abs-b x)
  (cond
    ((< x 0) (- x))
    (else x)))

(abs-b -10)

(define (abs-c x)
  (if (< x 0)
      (- x)
      x))
;if expressions need to be on one line

(abs-c -10)

(define (my>= x y)
  (or (> x y) (= x y)))

(my>= 10 5)
(my>= 10 10)
(my>= 5 10)

(define (my>=2 x y)
  (not (< x y)))

(my>=2 10 5)
(my>=2 10 10)
(my>=2 5 10)

;Exercise 1.2
(define (sum-largest-two a b c)
  (cond
    ((or (> a b) (> a c))
         (if (> b c)
             (sum-of-squares a b)
             (sum-of-squares a c)))
    (else (sum-of-squares b c))))

(sum-largest-two 1 2 3)
(sum-largest-two 10 2 1)
(sum-largest-two 10 11 1)

(define (sum-largest-two-2 a b c)
  (cond
    ((or (> a b) (> b c)) (sum-of-squares a b))
    ((and (> a b) (> c b)) (sum-of-squares a c))
    (else (sum-of-squares b c))))
         
(sum-largest-two-2 1 2 3)
(sum-largest-two-2 10 2 1)
(sum-largest-two-2 10 11 1)

(define (sum-largest-two-3 a b c)
  (if (or (> a b) (> a c))
      (if (> b c) 
          (sum-of-squares a b)
          (sum-of-squares a c))
      (sum-of-squares b c)))

(sum-largest-two-3 1 2 3)
(sum-largest-two-3 10 2 1)
(sum-largest-two-3 10 11 1)


