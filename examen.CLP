(deffacts datos (numero 21) (numeros 5 3 8 14 7 resultado 0))

(defrule suma
?f1 <- (numeros ?x ?y $?z resultado ?)
=>
(assert (numeros $?z (+ ?x ?y) resultado (+ ?x ?y))))

(defrule resta
?f1 <- (numeros ?x ?y $?z resultado ?)
(test (> ?x ?y))
=>
(assert (numeros $?z (- ?x ?y) resultado (- ?x ?y))))

(defrule multiplicacion
?f1 <- (numeros ?x ?y $?z resultado ?)
=>
(assert (numeros $?z (* ?x ?y) resultado (* ?x ?y))))

(defrule division
?f1 <- (numeros ?x ?y $?z resultado ?)
(test (= (mod ?x ?y) 0))
=>
(assert (numeros $?z (div ?x ?y) resultado (div ?x ?y))))

(defrule meta
(declare (salience 100))
?f1 <- (numeros $?num resultado ?res)
?f2 <- (numero ?obj)
(test (= (length $?num) 1))
=>
(halt))