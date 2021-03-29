(deffacts datos (numero 21) (numeros 5 3 8 14 7 resultado 0))

(defrule suma
?f1 <- (numeros ?x ?y $?z)
=>
(assert (numeros $?z (+ ?x ?y) resultado (+ ?x ?y))))

(defrule resta
?f1 <- (numeros ?x ?y $?z)
=>
(assert (numeros $?z (- ?x ?y)))
(assert (numeros $?z (- ?x ?y) resultado (- ?x ?y))))

(defrule multiplicacion
?f1 <- (numeros ?x ?y $?z)
=>
(assert (numeros $?z (* ?x ?y)))
(assert (numeros $?z (* ?x ?y) resultado (* ?x ?y))))

