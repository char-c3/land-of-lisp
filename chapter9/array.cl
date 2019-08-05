
(defun p 
    (x)
    (format t "~a~%" x))

(defparameter x 
    (make-array 3))
(aref x 1)
(setf 
    (aref x 1) 'foo)
;(format t "~a~%" x)
(p x)

(defparameter foo 
    (list 'a 'b 'c))
(second foo)
(p foo)
(setf 
    (second foo) 'z)
(p foo)

(setf foo 
    (make-array 4))
(p foo)
(setf 
    (aref foo 2) 
    (list 'x 'y 'z))
(p foo)
(setf 
    (car 
        (aref foo 2)) 
    (make-hash-table))
(p foo)
(setf 
    (gethash 'zoink 
        (car 
            (aref foo 2))) 5)
(p foo)
(p 
    (gethash 'zoink 
        (car 
            (aref foo 2))))

(p 
    (nth 1 '(foo bar baz)))