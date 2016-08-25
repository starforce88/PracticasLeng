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