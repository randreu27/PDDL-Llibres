;Extenció 1

(define (domain llibresnivell1)

(:requirements :strips :fluents :adl)

(:functions
 (MesActual ?m)
)

;Predicats      [predecessor -> ?x és predecessor d'?y]...
(:predicates
    (delCataleg ?ll)     (predecessor ?ll1 ?ll2)
    (llegit ?ll ?m)
)


;actions
;(not (and (exists (?jallegit1) (llegit ?jallegit1 ?m)) (exists (?jallegit2) (llegit ?jallegit2 ?m))))
(:action llegirllibre
  :parameters (?ll ?m)
  :precondition (and (delCataleg ?ll) (not (exists (?p) (and (predecessor ?p ?ll) (not (llegit ?ll ?m))))))
  :effect (and (llegit ?ll ?m))
)

(:action AugmentarMes
    :parameters (?m)
    :precondition (and (not (and (exists (?jallegit1) (llegit ?jallegit1 ?m)) (exists (?jallegit2) (llegit ?jallegit2 ?m)))))
    :effect (and (increase (MesActual ?m) 1))
)


)