;Extensió 2

(define (domain llibresnivell2)

(:requirements :strips :fluents :adl)

(:functions
 (MesSeguent)
 ;(MesActual)
)

;Predicats      [predecessor -> ?x és predecessor d'?y]...
;               [parallel -> ?x és un llibre paral·lel d'?y]...
(:predicates
    (delCataleg ?ll)        
    (predecessor ?ll1 ?ll2)
    (llegit ?ll)         
    (parallel ?ll1 ?ll2)
    (mes_anterior ?ll)      
    (mes_anterior2 ?ll)
    (parallel_per_llegir ?ll)
)


;actions
(:action llegir_llibre
  :parameters (?ll)
  :precondition (and 
                (= (MesSeguent) 0)
                (not (llegit ?ll))
                (not (exists (?p) (and (predecessor ?p ?ll) (or (mes_anterior ?p) (mes_anterior2 ?p)))))
                (not (exists (?p) (and (predecessor ?p ?ll) (not (llegit ?p)))))
                (forall (?para) (not (parallel ?para ?ll)))
                (delCataleg ?ll)
                )
  :effect (and 
          (llegit ?ll) 
          (increase (MesSeguent) 1)
          (mes_anterior ?ll)
          )
)

(:action llegir_llibre_auxiliar
    :parameters (?ll)
    :precondition (and
                  (not (exists (?p) (and (predecessor ?p ?ll) (mes_anterior2 ?p))))
                  (not (exists (?p) (and (predecessor ?p ?ll) (mes_anterior ?p))))
                  (not (exists (?p) (and (predecessor ?p ?ll) (not (llegit ?p)))))
                  (delCataleg ?ll)
                  )
    :effect (and 
            (llegit ?ll) 
            (mes_anterior2 ?ll)
            )
)

(:action Seguent_Mes
    :parameters ()
    :precondition (and  
                  ;(< (MesActual) 12)
                  (= (MesSeguent) 1)
                  (exists (?ll) (or (mes_anterior ?ll) (mes_anterior2 ?ll)))
                  )
    :effect (and
            ;(increase (MesActual) 1)
            (decrease (MesSeguent) 1)
            (forall (?ll) (when (mes_anterior ?ll) (not (mes_anterior ?ll))))
            (forall (?ll) (when (mes_anterior2 ?ll) (not (mes_anterior2 ?ll))))
            )
)
)