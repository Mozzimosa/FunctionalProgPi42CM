(define (lowFib a)
  (if (< 0 a)
      (find_lowest 0 a)
      )
)

(define (find_lowest index value)
  (
   if (< value (fib index)) (string-append "Найменше число фіб. від 'a': " (number->string (fib (- index 1)))) 
      (find_lowest (+ index 1) value)
   )
  )

(define (fib n)
  (if (= n 0) 0
      (if (= n 1) 1
          (+ (fib (- n 1))
             (fib (- n 2))))
  ))