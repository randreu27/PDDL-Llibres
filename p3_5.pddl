(define (problem p_3_5)
  (:domain llibresnivell3)

  (:objects
	  A0  A1  A2  A3  A4
	)
  (:init
    (delCataleg A0)
    (delCataleg A1)
    (delCataleg A2)
    (delCataleg A3)
    (delCataleg A4)

    (= (PaginesLlibre A0) 310)
    (= (PaginesLlibre A1) 356)
    (= (PaginesLlibre A2) 194)
    (= (PaginesLlibre A3) 416)
    (= (PaginesLlibre A4) 388)

    (predecessor A0 A1)
    (predecessor A1 A4)

    (parallel A0 A4)
    (parallel A0 A3)

    (= (MesSeguent) 0)
    (= (PaginesMes) 0)
  )
  (:goal (forall (?ll) (imply (not (exists (?ll2) (predecessor ?ll ?ll2))) (llegit ?ll))))
)