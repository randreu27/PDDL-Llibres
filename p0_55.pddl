(define (problem p_0_55)
  (:domain llibresnivell0)

  (:objects
	  A0  A1  A2  A3  A4  A5  A6  A7  A8  A9  B0  B1  B2  B3  B4  B5  B6  B7  B8  B9  C0  C1  C2  C3  C4  C5  C6  C7  C8  C9  D0  D1  D2  D3  D4  D5  D6  D7  D8  D9  E0  E1  E2  E3  E4  E5  E6  E7  E8  E9  F0  F1  F2  F3  F4
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
    (delCataleg F0)
    (delCataleg F1)
    (delCataleg F2)
    (delCataleg F3)
    (delCataleg F4)

    (predecessor D9 E5)
    (predecessor B7 C6)
    (predecessor B1 B2)
    (predecessor C1 F4)
    (predecessor C9 E9)
    (predecessor A5 C7)
    (predecessor D5 D7)
    (predecessor E6 F3)
    (predecessor B0 D9)
    (predecessor B0 C1)
    (predecessor B5 B9)
    (predecessor A7 B6)
    (predecessor D2 F1)
    (predecessor B8 D2)
    (predecessor E3 E7)
    (predecessor A5 C3)
    (predecessor F1 F2)
    (predecessor B2 B3)
    (predecessor C6 C8)
    (predecessor D1 D6)
    (predecessor A1 B7)

  )
  (:goal (forall (?ll) (imply (not (exists (?ll2) (predecessor ?ll ?ll2))) (llegit ?ll))))
)