;Extensió 1

(define (domain llibresnivell1)

  (:requirements :strips :fluents :adl)

  (:functions
    (MesActual)
  )

  ;Predicats      [predecessor -> ?x és predecessor d'?y]...
  (:predicates
    (delCataleg ?ll)
    (predecessor ?ll1 ?ll2)
    (llegit ?ll)
  )

  ;actions
  ;(not (and (exists (?jallegit1) (llegit ?jallegit1 ?m)) (exists (?jallegit2) (llegit ?jallegit2 ?m))))
  (:action llegirllibre
    :parameters (?ll)
    :precondition (and (delCataleg ?ll) (not (exists
          (?p)
          (and (predecessor ?p ?ll) (not (llegit ?p))))))
    :effect (and (llegit ?ll))
  )

  (:action AugmentarMes
    :parameters ()
    :precondition (and (exists
        (?ll)
        (llegit ?ll)) (not (= (MesActual) 12)))
    :effect (and (increase (MesActual) 1))
  )
  
)