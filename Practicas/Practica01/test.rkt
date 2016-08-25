#lang plai
(require "practica01.rkt")

;TEST EJERCICIO 1
(test (ec-lin 2 3) 1)
(test (ec-lin 1 1) 1)
(test (ec-lin 2 4) -2)
(test (ec-lin 3 1) -1/3)
(test (ec-lin 5 10) 1)

;TEST EJERCICIO 2
(test (area-heron 3 25 26) 36)
(test (area-heron 3 4 5) 6)
(test (area-heron 10.09 3.83 10.46) 19.24)
(test (area-heron 1 2 3) 5)
(test (area-heron 12 7 6) 12)

;TEST EJERCICIO 3
(test (triangulo-rec? 5 2 4) #t)
(test (triangulo-rec? 35 23 22) #f)
(test (triangulo-rec? 5 12 13) #t)
(test (triangulo-rec? 15 6 16) #t)
(test (triangulo-rec? 12 15 18) #t)

;TEST EJERCICIO 4
(test (s-digitos 8) 8)
(test (s-digitos 123) 6)
(test (s-digitos 231) 1)
(test (s-digitos 2123) 6)
(test (s-digitos 1111) 4)

;TEST EJERCICIO 5
(test (invertir 8) 8)
(test (invertir 123) 321)
(test (invertir 32) 32)
(test (invertir 12) 21)
(test (invertir 1145) 1145)

;TEST EJERCICIO 6
(test (elimina-dup '()) '())
(test (elimina-dup '(1 2 3 3 4 5 5)) '(1 2 3))
(test (elimina-dup '(1 2 3 3 4 5 5)) '(1 2 3 4 5))
(test (elimina-dup '(1 2 3 3 4 5 5 4 5)) '(1 2 3 4 5))
(test (elimina-dup '(1 2 3 3 4 5 5 4 5)) '(1 2 3 4 5 4 5))

;TEST EJERCICIO 7
;a)
(test (binarios '()) '())
(test (binarios '(1 2 3 4)) '())
(test (binarios '(10 9 8)) '("1010" "1001" "1000"))
(test (binarios '(5 6 7)) '("101" "110" "111"))
(test (binarios '(11 12 13)) '("1010" "1001" "1000"))

;b)
(test (primos '()) '())
(test (primos '(5 6 7)) '(5 7))
(test (primos '(1 2 3 4 5 6)) '())
(test (primos '(10 11 12 13 14 15 16)) '(11 13))
(test (primos '(101 111 121 131 141 151 161)) '(101 131 151))

;c)
(test (reversal '()) '())
(test (reversal '(10 11 12 13 14 15 16)) '(16 15 14 13 12 11 10))
(test (reversal '(0 1 2 3 4 5 6)) '(16 15 14 13 12 11 10))
(test (reversal '(1 5 2 4 5 6)) '(1 5 2 4 5 6))
(test (reversal '(1 5 2 4 5 6)) '(6 5 4 2 5 1))

;TEST EJERCICIO 8
;a)
(test (concatena '() '()) '())
(test (concatena '(1 2 3) '()) '(1 2 3))
(test (concatena '() '(1 2 3)) '(1 2 3))
(test (concatena '(1 5 2 4 5 6) '(1 2 3 4)) '(1 5 2 4 5 6 1 2 3 4))
(test (concatena '(1 5 2 4 5 6) '(1 2 3 4 3 4 2 1)) '(1 5 2 4 5 6 1 2 3 4))

;b)
(test (mapea number? '()) '())
(test (mapea number? '(1 r 1 e)) '(#t #f #t #f))
(test (mapea symbol? '(1 r 1 e)) '(#f #t #f #t))
(test (mapea string? '(1 r 1 e)) '(#f #t #f #t))
(test (mapea symbol? '(q r s e)) '(#f #t #f #t))

;c)
(test (filtra symbol? '()) '())
(test (filtra symbol? '(1 r 1 e)) '(r e))
(test (filtra number? '(1 r 1 e)) '(1 1))
(test (filtra string? '(1 r 1 e)) '(r e))
(test (filtra boolean? '(1 r 1 e)) '(r e))

;d)
(test (take '(1) 0) '())
(test (take '(1 2 3 4) 2) '(1 2))
(test (take '(1 2 3 4) 3) '(1 2))
(test (take '(1 2 3 4) 3) '(1 2 3))
(test (take '(1 2 3 4) 2) '(1))

;e)
(test (quita '(1 2 3 4) 2) '(3 4))
(test (quita '(1 2 3 4) 3) '(1 2))
(test (quita '(1 2 3 4) 3) '(4))
(test (quita '(1 2 3 4) 0) '(1 2 3 4))
(test (quita '(1 2 3 4) 1) '(2 3 4))