(display "\n")
(define atom?
	(lambda (x) 
		(display x)
		(display "\n")
		(and (not (pair? x)) (not (null? x)))))

(define lat
	(lambda (l) 
		(cond 
			((null? l) #t)
			((atom? (car l)) (lat (cdr l)))
			(else #f))))

(display (lat '(peanut and butter)))