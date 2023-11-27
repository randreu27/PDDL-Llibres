;Extensió 2

(define (domain llibresnivell3)

(:requirements :strips :fluents :adl)

(:functions
 (MesSeguent)
 ;(MesActual)
 (PaginesActuals)
 (hi_ha_parallel)
)

;Predicats      [predecessor -> ?x és predecessor d'?y]...
;               [parallel -> ?x és un llibre paral·lel d'?y]...
(:predicates
    (delCataleg ?ll ?p)        
    (predecessor ?ll1 ?ll2)
    (llegit ?ll)         
    (parallel ?ll1 ?ll2)
    (mes_anterior ?ll)      
    (mes_anterior2 ?ll)
    (parallel_per_llegir ?ll)
)


;actions
(:action llegir_llibre
  :parameters (?ll ?p)
  :precondition (and 
                (= (MesSeguent) 0)
                ;(< (PaginesActuals) (- (801 ?p)))
                (not (exists (?p) (and (predecessor ?p ?ll) (or (mes_anterior ?p) (mes_anterior2 ?p)))))
                (not (exists (?p) (and (predecessor ?p ?ll) (not (llegit ?p)))))
                (delCataleg ?ll ?p)
                )
  :effect (and 
          (llegit ?ll)
          (mes_anterior ?ll)
          (increase (MesSeguent) 1)
          (increase (PaginesActuals) ?p)
          ;(when (exists (?par) (parallel ?par ?ll)) (increase (hi_ha_parallel) 1))
          )
)

(:action llegir_llibre_auxiliar
    :parameters (?ll ?p)
    :precondition (and
                  (not (exists (?p) (and (predecessor ?p ?ll) (mes_anterior2 ?p))))
                  (not (exists (?p) (and (predecessor ?p ?ll) (mes_anterior ?p))))
                  (not (exists (?p) (and (predecessor ?p ?ll) (not (llegit ?p)))))
                  (delCataleg ?ll ?p)
                  )
    :effect (and 
            (llegit ?ll) 
            (mes_anterior2 ?ll)
            (increase (PaginesActuals) ?p)
            ;(when (exists (?par) (parallel ?par ?ll)) (increase (hi_ha_parallel) 1))
            )
)

(:action establir_parallel
  :parameters (?ll ?par)
  :precondition (and
                (not (llegit ?par))
                (llegit ?ll)
                (parallel ?par ?ll)
                (delCataleg ?par)
                )
  :effect (parallel_per_llegir ?par)
)


(:action llegir_parallel
    :parameters (?par)
    :precondition (and 
                  (parallel_per_llegir ?par)
                  )
    :effect (and 
            (llegit ?par) 
            (not (parallel_per_llegir ?par)) 
            (decrease (hi_ha_parallel) 1)
            )
)

(:action Seguent_Mes
    :parameters ()
    :precondition (and
                  (= (hi_ha_parallel) 0)    
                  ;(< (MesActual) 12)
                  (= (MesSeguent) 1)
                  (exists (?ll) (or (mes_anterior ?ll) (mes_anterior2 ?ll)))
                  )
    :effect (and
            ;(increase (MesActual) 1)
            (decrease (MesSeguent) 1)
            (= (PaginesActuals) 0)
            (forall (?ll) (when (mes_anterior ?ll) (not (mes_anterior ?ll))))
            (forall (?ll) (when (mes_anterior2 ?ll) (not (mes_anterior2 ?ll))))
            )
)
)