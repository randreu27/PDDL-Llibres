;Extensió 2

(define (domain llibresnivell3)

(:requirements :strips :fluents :adl)

(:functions
 (MesSeguent)
 (PaginesLlibre ?ll)
 (PaginesMes)
 (MesActual)
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
    (cal_llegir ?ll)
)


;actions
(:action llegir_llibre
  :parameters (?ll)
  :precondition (and
                (= (MesSeguent) 0)
                (not (llegit ?ll))
                (< (+ (PaginesMes) (PaginesLlibre ?ll)) 801)
                (not (exists (?p) (and (predecessor ?p ?ll) 
                                       (or (or (mes_anterior ?p) (mes_anterior2 ?p)) 
                                           (not (llegit ?p))))))
                (forall (?para) (not (parallel ?para ?ll)))
                (delCataleg ?ll)
                )
  :effect (and 
          (llegit ?ll)
          (increase (MesSeguent) 1)
          (mes_anterior ?ll)
          (increase (PaginesMes) (PaginesLlibre ?ll))
          )
)

(:action llegir_llibre_auxiliar
    :parameters (?ll)
    :precondition (and
                  (not (llegit ?ll))
                  (< (+ (PaginesMes) (PaginesLlibre ?ll)) 801)
                  (not (exists (?p) (and (predecessor ?p ?ll) 
                                       (or (not (llegit ?p))
                                       (or (mes_anterior ?p) (mes_anterior2 ?p))))))
                  (delCataleg ?ll)
                  )
    :effect (and
            (llegit ?ll)
            (mes_anterior2 ?ll)
            (increase (PaginesMes) (PaginesLlibre ?ll))
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
            (increase (MesActual) 1)
            (decrease (MesSeguent) 1)
            (forall (?ll) (when (mes_anterior ?ll) (not (mes_anterior ?ll))))
            (forall (?ll) (when (mes_anterior2 ?ll) (not (mes_anterior2 ?ll))))
            (decrease (PaginesMes) (PaginesMes))
            )
)
)