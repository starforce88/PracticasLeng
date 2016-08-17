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

;b) Escribir una función (primos l) que dada una lista de números, regrese otra conteniendo
;únicamente los números primos de la original
(define (primos lista)
  (if (empty? lista)
      empty
      (primos-aux (car lista) (cdr lista))))

(define (primos-aux elem lista)
  (if (empty? lista)
      (if (= 2 (length (divs elem)))
          (cons elem empty)
          empty)
      (if (= 2 (length (divs elem)))
          (cons elem (primos-aux (car lista) (cdr lista)))
          (primos-aux (car lista) (cdr lista)))))

(define (lista-hasta x y)
  (if(< x y)
     '()
     (cons y (lista-hasta x (+ 1 y)))))

(define (filtra-divs x lista)
  (if (empty? lista)
      '()
      (if(= (modulo x (car lista)) 0)
         (cons (car lista) (filtra-divs x (cdr lista)))
         (filtra-divs x (cdr lista)))))

(define (divs n)
  (filtra-divs n (lista-hasta n 1)))


;c) Escribir una función (reversar l) y una función (reversal l) que devuelvan la reversa
;de una lista. Usando la función foldr y foldl respectivamente
(define (remove-last lista)
    (if (empty?(cdr lista))
        '()
        (cons (car lista) (remove-last (cdr lista)))))

;reversal
(define (reversal lista)
  (foldl cons '() lista))

;reversar
(define (reversar lista)
  lista)

;8)Operaciones sobre listas
;a)append
(define (concatena lista1 lista2)
  (if(empty? lista1)
     (if(empty? lista2)
        empty
        (cons (car lista2) (concatena '() (cdr lista2))))
     (cons (car lista1) (concatena (cdr lista1) lista2))))

;b)mapea
(define (mapea f lista)
  (if(procedure? f)
     (if(empty? lista)
        '()
        (cons (f (car lista)) (mapea f (cdr lista))))
     (error 'mapea "No es una funcion")))

;c)filtra
(define (filtra pred lista)
  (if(procedure? pred)
     (if(empty? lista)
        '()
        (if(pred (car lista))
                 (cons (car lista) (filtra pred (cdr lista)))
                 (filtra pred (cdr lista))))
     (error 'filtra "No es un predicado")))

;d)toma
(define (toma lista n)
  (if (>= (length lista) n)
      (if (= n 0)
          '()
          (cons (car lista) (toma (cdr lista) (- n 1))))
      (error 'toma "La entrada n es mayor que el tamaño de la lista")))

;e)quita
(define (quita lista n)
  (if (>= (length lista) n)
      (if (= n 0)
          lista
          (quita (cdr lista) (- n 1)))
      (error 'quita "La entrada n es mayor que el tamaño de la lista")))

;9)let lambda
;a)
(let ([mayor (lambda (a b)
               (if (< a b)
                   b
                   a))])
  (mayor 1834 1729))

;b)
(letrec ([suman (lambda (n)
                  (if (= n 1)
                      n
                      (+ n (suman (- n 1)))))])
  (suman 100))