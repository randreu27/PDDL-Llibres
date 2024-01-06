(define (problem p_2_50)
  (:domain llibresnivell2)

  (:objects
	  A0  A1  A2  A3  A4  A5  A6  A7  A8  A9  B0  B1  B2  B3  B4  B5  B6  B7  B8  B9  C0  C1  C2  C3  C4  C5  C6  C7  C8  C9  D0  D1  D2  D3  D4  D5  D6  D7  D8  D9  E0  E1  E2  E3  E4  E5  E6  E7  E8  E9
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
    (delCataleg D0)
    (delCataleg D1)
    (delCataleg D2)
    (delCataleg D3)
    (delCataleg D4)
    (delCataleg D5)
    (delCataleg D6)
    (delCataleg D7)
    (delCataleg D8)
    (delCataleg D9)
    (delCataleg E0)
    (delCataleg E1)
    (delCataleg E2)
    (delCataleg E3)
    (delCataleg E4)
    (delCataleg E5)
    (delCataleg E6)
    (delCataleg E7)
    (delCataleg E8)
    (delCataleg E9)

    (predecessor D9 E5)
    (predecessor B7 C6)
    (predecessor B1 B2)
    (predecessor C1 D8)
    (predecessor C9 E9)
    (predecessor A5 C7)
    (predecessor D5 E5)
    (predecessor E4 E5)
    (predecessor E6 E8)
    (predecessor B0 D9)
    (predecessor B0 C1)
    (predecessor B5 B9)
    (predecessor A7 B6)
    (predecessor D2 D5)
    (predecessor E4 E8)
    (predecessor E7 E8)
    (predecessor B8 C5)
    (predecessor E3 E5)
    (predecessor A5 C3)
    (predecessor B3 D9)
    (predecessor B7 D9)
    (predecessor A2 B5)
    (predecessor E5 E6)
    (predecessor C6 C8)
    (predecessor C4 E0)
    (predecessor A8 B0)
    (predecessor B5 E3)

    (parallel A0 A8)
    (parallel E8 E9)
    (parallel B2 D4)
    (parallel A0 A6)
    (parallel A8 E3)
    (parallel A1 D4)

    (= (MesSeguent) 0)
  )
  (:goal (forall (?ll) (imply (not (exists (?ll2) (predecessor ?ll ?ll2))) (llegit ?ll))))
)