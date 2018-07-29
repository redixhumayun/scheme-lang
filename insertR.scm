(define insertR
    (lambda (new old l) 
        (cond 
            ((null? l) (quote()))
            (else 
                (cond 
                    ((eq? (car l) old) (cons old (cons new (cdr l))))
                    (else (cons (car l) 
                        (insertR new old (cdr l)))))))))

(display (insertR 'topping 'fudge '(ice cream with fudge for dessert)))