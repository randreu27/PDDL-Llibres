;Nivell bàsic

(define (domain llibresnivell0)

(:requirements :strips :fluents :adl)


;Predicats      [predecessor -> ?x és predecessor d'?y]...
(:predicates
    (delCataleg ?ll)     (predecessor ?ll1 ?ll2)
    (llegit ?ll)
)


;actions
(:action llegir_llibre
  :parameters (?ll)
  :precondition (and (delCataleg ?ll) (not (exists (?p) (and (predecessor ?p ?ll) (not (llegit ?p))))))
  :effect (and (llegit ?ll))
)

)