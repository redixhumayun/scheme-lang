(define member
    (lambda (a b) 
        (cond 
            ((null? b) #f)
            (else (or (eq? (car b) a) 
                (member a (cdr b)))))))