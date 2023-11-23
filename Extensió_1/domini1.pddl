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
    (mes_anterior2 ?ll)
)


;actions
(:action llegir_llibre
  :parameters (?ll)
  :precondition (and (= (FerCanvi) 0)
                (not (exists (?p) (and (predecessor ?p ?ll) (or (mes_anterior ?p) (mes_anterior2 ?p)))))
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
    :precondition (and (delCataleg ?ll)
                  (not (exists (?p) (and (predecessor ?p ?ll) (mes_anterior2 ?p))))
                  (not (exists (?p) (and (predecessor ?p ?ll) (not (llegit ?p)))))
                  (delCataleg ?ll)
                  )
    :effect (and (llegit ?ll) (mes_anterior2 ?ll))
)

(:action Canviar_Mes
    :parameters ()
    :precondition (and (= (FerCanvi) 1) (exists (?ll) (or (mes_anterior ?ll) (mes_anterior2 ?ll))))
    :effect (and (decrease (FerCanvi) 1) 
            (forall (?ll) (when (mes_anterior ?ll) (not (mes_anterior ?ll))))
            (forall (?ll) (when (mes_anterior2 ?ll) (not (mes_anterior2 ?ll))))
            )
)
)
