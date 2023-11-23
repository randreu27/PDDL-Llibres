;Extensió 1

(define (domain llibresnivell1)

(:requirements :strips :fluents :adl)

(:functions
 (FerCanvi)
)

;Predicats      [predecessor -> ?x és predecessor d'?y]...
(:predicates
    (delCataleg ?ll)     (predecessor ?ll1 ?ll2)
    (llegit ?ll)      (mes_anterior ?ll)
)


;actions
(:action llegir_llibre
  :parameters (?ll)
  :precondition (and (= (FerCanvi) 0)
                (not (exists (?p) (and (predecessor ?p ?ll) (mes_anterior ?p))))
                (not (exists (?p) (and (predecessor ?p ?ll) (not (llegit ?p)))))
                (delCataleg ?ll)
                )
  :effect (and (llegit ?ll) (increase (FerCanvi) 1) (mes_anterior ?ll))
)

(:action llegir_llibre_sense_predecessor
  :parameters (?ll)
  :precondition (and (not (exists (?p) (predecessor ?p ?ll))) (delCataleg ?ll))
  :effect (and (llegit ?ll) (mes_anterior ?ll))
)

(:action llegir_entre_mes
    :parameters (?ll)
    :precondition (and (mes_anterior ?ll)
                  (not (exists (?p) (and (predecessor ?p ?ll) (not (llegit ?p)))))
                  (delCataleg ?ll)
                  )
    :effect (and (llegit ?ll) (mes_anterior ?ll))
)

(:action Canviar_Mes
    :parameters ()
    :precondition (and (= (FerCanvi) 1) (exists (?ll) (mes_anterior ?ll)))
    :effect (and (decrease (FerCanvi) 1) (forall (?ll) 
                                            (when (mes_anterior ?ll) 
                                                  (not (mes_anterior ?ll)))))
)
)
