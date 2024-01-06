(define (problem p_3_10)
  (:domain llibresnivell3)

  (:objects
	  A0  A1  A2  A3  A4  A5  A6  A7  A8  A9
	)
  (:init
    (delCataleg A0)
    (delCataleg A1)
    (delCataleg A2)
    (delCataleg A3)
    (delCataleg A4)
    (delCataleg A5)
    (delCataleg A6)
    (delCataleg A7)
    (delCataleg A8)
    (delCataleg A9)

    (= (PaginesLlibre A0) 310)
    (= (PaginesLlibre A1) 356)
    (= (PaginesLlibre A2) 194)
    (= (PaginesLlibre A3) 416)
    (= (PaginesLlibre A4) 388)
    (= (PaginesLlibre A5) 263)
    (= (PaginesLlibre A6) 341)
    (= (PaginesLlibre A7) 425)
    (= (PaginesLlibre A8) 235)
    (= (PaginesLlibre A9) 219)

    (predecessor A6 A7)
    (predecessor A4 A6)
    (predecessor A6 A8)
    (predecessor A5 A6)

    (parallel A0 A7)
    (parallel A0 A7)

    (= (MesSeguent) 0)
    (= (PaginesMes) 0)
  )
  (:goal (forall (?ll) (imply (not (exists (?ll2) (predecessor ?ll ?ll2))) (llegit ?ll))))
)