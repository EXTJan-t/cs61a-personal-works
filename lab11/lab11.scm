(define (over-or-under num1 num2) 
    (cond
        ((> num1 num2) 1)
        ((= num1 num2) 0)
        (else -1)))

(define (make-adder num) (lambda (x) (+ x num)))

(define (composed f g) (lambda (x) (f (g x))))

(define (repeat f n) 
    (define (new_f x)
        (if (> n 0)
            (f ((repeat f (- n 1)) x))
            x)
        )  
        new_f)

(define (max a b)
  (if (> a b)
      a
      b))

(define (min a b)
  (if (> a b)
      b
      a))

(define (gcd a b) 
    (define c (min a b))
    (define a (max a b))
    (define b c)
    (if (zero? (modulo a b))
        b
        (gcd b (modulo a b))))
