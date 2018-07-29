(define seconds
    (lambda (l) 
        (cond 
            ((null? l) (quote ())
            (else (cons (cdr (car l)) (seconds (cdr l))))))))

(display (seconds '((a b) (c d) (e f))))