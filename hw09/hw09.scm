(define (ascending? asc-lst) 
    (if (= (cdr asc-lst) nil)
        #t
        (if ((car asc-lst) < (car (cdr asc-lst)))
            (ascending? (cdr asc-lst))
            #f)))

(define (my-filter pred s)
    (if (null? s)
        nil
    (if (pred (car s))
        (append (cons (car s)) (my-filter pred (cdr s)))
        (my-filter pred (cdr s))
        )))

(define (interleave lst1 lst2) 
    (cond 
          ((null? lst1) lst2)
          ((null? lst2) lst1)
          (else (cons (car lst1) (interleave lst2 (cdr lst1))))))

(define (no-repeats lst) 
    (if (null? (cdr lst))
        lst
        (cons (car lst) (my-filter (lambda (x) (not (= x (car lst)))) (no-repeats (cdr lst)))))
