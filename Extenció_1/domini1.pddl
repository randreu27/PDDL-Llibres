;Extenció 1

(define (domain llibresnivell1)

(:requirements :strips :fluents  :adl)


;Predicats      [predecessor -> ?x és predecessor d'?y]...
(:predicates
    (delCataleg ?ll)     (predecessor ?ll1 ?ll2)
    (llegit ?ll)
)


;actions
(:action legirllibre
  :parameters (?ll)
  :precondition (and (delCataleg ?ll) (not (exists (?p) (and (predecessor ?p ?ll) (not (llegit ?p))))))
  :effect (and (llegit ?ll))
)

)