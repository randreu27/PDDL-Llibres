(define (problem p_0_30)
  (:domain llibresnivell0)

  (:objects
	  A0  A1  A2  A3  A4  A5  A6  A7  A8  A9  B0  B1  B2  B3  B4  B5  B6  B7  B8  B9  C0  C1  C2  C3  C4  C5  C6  C7  C8  C9
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
    (delCataleg B5)
    (delCataleg B6)
    (delCataleg B7)
    (delCataleg B8)
    (delCataleg B9)
    (delCataleg C0)
    (delCataleg C1)
    (delCataleg C2)
    (delCataleg C3)
    (delCataleg C4)
    (delCataleg C5)
    (delCataleg C6)
    (delCataleg C7)
    (delCataleg C8)
    (delCataleg C9)

    (predecessor B9 C5)
    (predecessor A8 B3)
    (predecessor A5 C7)
    (predecessor A0 B1)
    (predecessor B6 C4)
    (predecessor C8 C9)
    (predecessor B0 C8)
    (predecessor B9 C0)
    (predecessor B4 C6)
    (predecessor B3 B9)
    (predecessor A1 A5)
    (predecessor A4 C1)

  )
  (:goal (forall (?ll) (imply (not (exists (?ll2) (predecessor ?ll ?ll2))) (llegit ?ll))))
)