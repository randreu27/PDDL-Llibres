(define (problem p_0_15)
  (:domain llibresnivell0)

  (:objects
	  A0  A1  A2  A3  A4  A5  A6  A7  A8  A9  B0  B1  B2  B3  B4
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
    (delCataleg B0)
    (delCataleg B1)
    (delCataleg B2)
    (delCataleg B3)
    (delCataleg B4)

    (predecessor A9 B2)
    (predecessor A4 A7)
    (predecessor A2 B3)
    (predecessor A0 A6)
    (predecessor A8 B2)
    (predecessor A9 B0)
    (predecessor A5 B4)

  )
  (:goal (forall (?ll) (imply (not (exists (?ll2) (predecessor ?ll ?ll2))) (llegit ?ll))))
)