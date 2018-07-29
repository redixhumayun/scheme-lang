(define insertL 
    (lambda (new old l) 
        (cond 
            ((null? l) (quote ()))
            (else 
                (cond 
                    ((eq? (car l) old) (cons new l))
                    (else (cons (car l) 
                        (insertL new old (cdr l)))))))))

(display (insertL 'topping 'fudge '(ice cream with fudge for dessert)))