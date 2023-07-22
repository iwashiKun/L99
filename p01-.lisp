;; L-99
;; https://www.ic.unicamp.br/~meidanis/courses/mc336/problemas-lisp/L-99_Ninety-Nine_Lisp_Problems.html
;
;; p01-

;; l99-p01
(defun l99-p01 (lst)
  (if (equal (length lst) 1)
      lst
      (l99-p01 (cdr lst))))

;; l99-p02
(defun l99-p02 (lst)
  (if (equal (length lst) 2)
      lst
      (l99-p02 (cdr lst))))

;; l99-p03
(defun l99-p03 (lst pos)
  (if (equal pos 1)
      (car lst)
      (l99-p03 (cdr lst) (decf pos))))

;; l99-p04
(defun l99-p04 (lst)
  (p04-itel lst 0))
(defun p04-itel (lst lng)
  (if (equal '() lst)
      lng
      (progn
        (incf lng)
        (p04-itel (cdr lst) lng))))
