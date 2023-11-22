;Extenció 1

(define (domain llibresnivell1)

(:requirements :strips :fluents :typing :adl)

(:types
  llibre mes - object
  gener febrer març abril maig juny juliol agost setembre octubre novembre desembre - mes
)

;Predicats      [predecessor -> ?x és predecessor d'?y]...
(:predicates
    (delCataleg ?ll - llibre)     (predecessor ?ll1 - llibre ?ll2 - llibre)
    (llegit ?ll - llibre ?m - mes)
)


;actions
(:action llegirllibre
  :parameters (?ll - llibre ?m - mes)
  :precondition (and (delCataleg ?ll) (not (exists (?p) (and (predecessor ?p ?ll) (not (llegit ?ll ?m))))))
  :effect (and (llegit ?ll ?m))
)
)