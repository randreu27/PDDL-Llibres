(define (problem p_0_40)
  (:domain llibresnivell0)

  (:objects
	  A0  A1  A2  A3  A4  A5  A6  A7  A8  A9  B0  B1  B2  B3  B4  B5  B6  B7  B8  B9  C0  C1  C2  C3  C4  C5  C6  C7  C8  C9  D0  D1  D2  D3  D4  D5  D6  D7  D8  D9
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

    (predecessor C3 D2)
    (predecessor A8 B4)
    (predecessor A0 C2)
    (predecessor D2 D6)
    (predecessor D8 D9)
    (predecessor C1 D9)
    (predecessor A2 C7)
    (predecessor B0 D3)
    (predecessor C8 D5)
    (predecessor B0 B6)
    (predecessor B5 B7)
    (predecessor A7 B6)
    (predecessor D2 D9)
    (predecessor D7 D8)
    (predecessor C4 D7)
    (predecessor A6 C5)
    (predecessor B3 D5)
    (predecessor B4 D8)
    (predecessor C6 C8)
    (predecessor B7 C4)
    (predecessor C5 D0)
    (predecessor C1 C3)
    (predecessor B2 D5)
    (predecessor A0 C7)
    (predecessor A3 C8)
    (predecessor D1 D4)
    (predecessor A1 B7)
    (predecessor C7 D9)
    (predecessor A7 A8)
    (predecessor A7 C0)

  )
  (:goal (forall (?ll) (imply (not (exists (?ll2) (predecessor ?ll ?ll2))) (llegit ?ll))))
)