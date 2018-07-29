(define subst 
    (lambda (new old lat) 
        (cond 
            ((null? lat) (quote ()))
            (else (cond 
                ((eq? (car lat) old) (cons new (cdr lat)))
                (else (cons (car lat) 
                        (subst new old (cdr lat)))))))))

(display (subst 'topping 'fudge '(ice cream with fudge for dessert)))