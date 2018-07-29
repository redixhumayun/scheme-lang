(define firsts
    (lambda (l) 
        (cond 
            ((null? l) (quote ()))
            (else (cons (car (car l)) (firsts (cdr l)))))))

(display (firsts '((apple peach pumpkin) (plum pear cherry) (grape raisin pea))))