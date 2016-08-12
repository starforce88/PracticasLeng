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

;Eliminar duplicados
(define (elimina-dup lista)
  (if (empty? lista)
      '()
      (elimina-dup-aux (car lista) (cdr lista))))

(define (elimina-dup-aux elem lista)
  (if (empty? lista)
      (cons elem lista)
      (if (eq? elem (car lista))
          (elimina-dup-aux (car lista) (cdr lista))
          (cons elem (elimina-dup-aux (car lista) (cdr lista))))))

;7) Funciones sobre listas
;a)a) Escribir una función (binarios l) que dada una lista de números, regrese otra con la
;representación binaria de cada uno de ellos
(define (binario n)
  (if(= n 0)
     "0"
     (binario-aux n)))
(define (binario-aux n)
  (if (= n 0)
      ""
      (string-append (binario-aux (quotient n 2)) (number->string (modulo n 2)))))

(define (binarios lista)
  (if (empty? lista)
      empty
      (aux-binarios (car lista) (cdr lista))))

(define (aux-binarios elem lista)
  (if (empty? lista)
      (cons (binario elem) empty)
      (cons (binario elem) (aux-binarios (car lista) (cdr lista)))))


  