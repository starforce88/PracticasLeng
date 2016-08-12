#lang plai

;1) Ecuación de primer grado
(define (ec-lin a b)
  (/ (* -1 b) a))

;2) Fórmula de Herón
;Funcion S
(define (S a b c)
  (/ (+ a (+ b c)) 2))

(define (area-heron a b c)
  (sqrt (* (S a b c) (* (- (S a b c) a) (* (- (S a b c) b) (- (S a b c) c))))))

;3) Triangulos rectangulos
(define (triangulo-rec? a b c)
  (if(= (+ (* a a) (* b b)) (* c c))
     #t
     #f))

;4)s-digitos
(define (s-digitos n)
  (if (= n 0)
      0 
      (+ (modulo n 10) 
         (s-digitos (/ (- n (modulo n 10)) 10)))))

;5)Inversión de números
(define (invertir n)
  (invertir-aux n 0))

(define (invertir-aux n m)
  (if (= n 0)
      m
      (invertir-aux (quotient n 10) (+ (* m 10) (modulo n 10)))))