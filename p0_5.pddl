(define (problem p_0_5)
  (:domain llibresnivell0)

  (:objects
	  A0  A1  A2  A3  A4
	)
  (:init
    (delCataleg A0)
    (delCataleg A1)
    (delCataleg A2)
    (delCataleg A3)
    (delCataleg A4)

    (predecessor A2 A4)
    (predecessor A1 A2)
    (predecessor A0 A3)
    (predecessor A3 A4)

  )
  (:goal (forall (?ll) (imply (not (exists (?ll2) (predecessor ?ll ?ll2))) (llegit ?ll))))
)