(define (Stack)
  (let ((L '()))
    (lambda (msg . args)
      (cond ((eq? msg 'empty?) (null? L))
            ((eq? msg 'top) (car L))
            ((eq? msg 'pop!) (set! L (cdr L)) L)
            ((eq? msg 'push!) (set! L (cons (car args) L)) L)
            (#t 'error)))))
