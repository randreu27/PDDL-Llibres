;Extensió 1

(define (domain llibresnivell1)

(:requirements :strips :fluents :adl)

(:functions
 (FerCanvi)
)

;Predicats      [predecessor -> ?x és predecessor d'?y]...
(:predicates
    (delCataleg ?ll)     (predecessor ?ll1 ?ll2)
    (llegit ?ll)
)


;actions
(:action llegir_llibre_amb_predecessor
  :parameters (?ll)
  :precondition (and (= (FerCanvi) 0) (delCataleg ?ll) (exists (?p) (and (predecessor ?p ?ll))) (not (exists (?p) (and (predecessor ?p ?ll) (not (llegit ?p))))))
  :effect (and (llegit ?ll) (increase (FerCanvi) 1))
)

(:action llegir_llibre_sense_predecessor
  :parameters (?ll)
  :precondition (and (delCataleg ?ll) (not (exists (?p) (and (predecessor ?p ?ll)))))
  :effect (and (llegit ?ll))
)

(:action Canviar_Mes
    :parameters ()
    :precondition (and (= (FerCanvi) 1))
    :effect (and (decrease (FerCanvi) 1))
)
)
