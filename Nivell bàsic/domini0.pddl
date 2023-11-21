;Nivell bàsic

(define (domain llibresnivell1)

(:requirements :strips :fluents :typing :adl)

;Predicats      [predecessor -> ?x és predecessor d'?y]...
(:predicates
    (delCataleg ?x)     (predecessor ?x ?y)
    (parallel ?x ?y)    (llegit ?x)
    (perllegir ?x)      (llibrecurt ?x)
    (llibrenormal ?x)   (llibrellarg ?x)
)


;actions
(:action action_name
    :parameters ()
    :precondition (and )
    :effect (and )
)

)