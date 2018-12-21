(define (reverse-tree tree)
  (if (null? tree)
      null
      (let ((root (car tree)) (tree (cdr tree)))
        (if (null? tree)
            (list root)
            (list root (reverse-tree (cadr tree)) (reverse-tree (car tree)))))))