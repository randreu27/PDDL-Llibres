(define (problem random_3_10)
  (:domain llibresnivell3)

  (:objects
A
B
C
D
E
F
G
H
I
J
  )

  (:init
    (delCataleg A)
    (delCataleg B)
    (delCataleg C)
    (delCataleg D)
    (delCataleg E)
    (delCataleg F)
    (delCataleg G)
    (delCataleg H)
    (delCataleg I)
    (delCataleg J)

    (= (PaginesLlibre A) 523)
    (= (PaginesLlibre B) 336)
    (= (PaginesLlibre C) 472)
    (= (PaginesLlibre D) 550)
    (= (PaginesLlibre E) 591)
    (= (PaginesLlibre F) 565)
    (= (PaginesLlibre G) 565)
    (= (PaginesLlibre H) 138)
    (= (PaginesLlibre I) 414)
    (= (PaginesLlibre J) 63)

    (predecessor H I)
    (predecessor E I)

    (parallel J H)
    (parallel B I)
    (parallel G I)

  )

  (:goal (and (forall (?ll) (imply (not (exists (?ll2) (predecessor ?ll ?ll2))) (llegit ?ll)))))
  (:metric maximize (PaginesMes))
)
