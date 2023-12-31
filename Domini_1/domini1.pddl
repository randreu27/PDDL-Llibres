;Extensió 1

(define (domain llibresnivell1)

(:requirements :strips :fluents :adl)

(:functions
 (MesSeguent)
)

;Predicats      [predecessor -> ?x és predecessor d'?y]...
(:predicates
    (delCataleg ?ll)        (predecessor ?ll1 ?ll2)
    (llegit ?ll)
    (mes_anterior ?ll)      (mes_anterior2 ?ll)
)


;actions
(:action llegir_llibre
  :parameters (?ll)
  :precondition (and 
                (= (MesSeguent) 0)
                (not (exists (?p) (and (predecessor ?p ?ll) (mes_anterior2 ?p))))
                (not (exists (?p) (and (predecessor ?p ?ll) (not (llegit ?p)))))
                (delCataleg ?ll)
                )
  :effect (and (llegit ?ll) (increase (MesSeguent) 1) (mes_anterior ?ll))
)

(:action llegir_llibre_auxiliar
    :parameters (?ll)
    :precondition (and
                  (not (exists (?p) (and (predecessor ?p ?ll) (mes_anterior2 ?p))))
                  (not (exists (?p) (and (predecessor ?p ?ll) (mes_anterior ?p))))
                  (not (exists (?p) (and (predecessor ?p ?ll) (not (llegit ?p)))))
                  (delCataleg ?ll)
                  )
    :effect (and (llegit ?ll) (mes_anterior2 ?ll))
)

(:action Seguent_Mes
    :parameters ()
    :precondition (and
                  (= (MesSeguent) 1)
                  (exists (?ll) (or (mes_anterior ?ll) (mes_anterior2 ?ll)))
                  )
    :effect (and
            (decrease (MesSeguent) 1)
            (forall (?ll) (when (mes_anterior ?ll) (not (mes_anterior ?ll))))
            (forall (?ll) (when (mes_anterior2 ?ll) (not (mes_anterior2 ?ll))))
            )
)
)
