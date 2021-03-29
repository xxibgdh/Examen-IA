(deffacts datos (numero 21) (numeros 5 3 8 14 7 resultado 0))

(defrule division
?f1 <- (numeros $?a ?x $?c ?y $?b resultado ?)
(test (= (mod ?x ?y) 0))
=>
(assert (numeros (div ?x ?y) $?a $?c $?b resultado (div ?x ?y))))

(defrule resta
?f1 <- (numeros $?a ?x $?c ?y $?b resultado ?)
(test (> ?x ?y))
=>
(assert (numeros (- ?x ?y) $?a $?c $?b resultado (- ?x ?y))))

(defrule suma
?f1 <- (numeros $?a ?x $?c ?y $?b resultado ?)
=>
(assert (numeros (+ ?x ?y) $?a $?c $?b resultado (+ ?x ?y))))

(defrule multiplicacion
?f1 <- (numeros $?a ?x $?c ?y $?b resultado ?)
=>
(assert (numeros (* ?x ?y) $?a $?c $?b resultado (* ?x ?y))))

(defrule meta
(declare (salience 100))
?f1 <- (numeros $?num resultado ?res)
?f2 <- (numero ?obj)
(test (and (= ?obj ?res) (= (length $?num) 1)))
=>
(halt))