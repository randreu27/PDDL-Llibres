(define (problem p_0_10)
  (:domain llibresnivell0)

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

    (predecessor A5 A8)
    (predecessor A2 A4)
    (predecessor A0 A6)
    (predecessor A8 A9)
    (predecessor A1 A7)

  )
  (:goal (forall (?ll) (imply (not (exists (?ll2) (predecessor ?ll ?ll2))) (llegit ?ll))))
)