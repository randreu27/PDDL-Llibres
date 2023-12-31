(define (problem p_3_40)
  (:domain llibresnivell3)

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
    (= (PaginesLlibre B0) 499)
    (= (PaginesLlibre B1) 304)
    (= (PaginesLlibre B2) 263)
    (= (PaginesLlibre B3) 146)
    (= (PaginesLlibre B4) 274)
    (= (PaginesLlibre B5) 183)
    (= (PaginesLlibre B6) 348)
    (= (PaginesLlibre B7) 541)
    (= (PaginesLlibre B8) 173)
    (= (PaginesLlibre B9) 314)
    (= (PaginesLlibre C0) 294)
    (= (PaginesLlibre C1) 358)
    (= (PaginesLlibre C2) 345)
    (= (PaginesLlibre C3) 162)
    (= (PaginesLlibre C4) 352)
    (= (PaginesLlibre C5) 203)
    (= (PaginesLlibre C6) 197)
    (= (PaginesLlibre C7) 432)
    (= (PaginesLlibre C8) 397)
    (= (PaginesLlibre C9) 149)
    (= (PaginesLlibre D0) 358)
    (= (PaginesLlibre D1) 340)
    (= (PaginesLlibre D2) 438)
    (= (PaginesLlibre D3) 304)
    (= (PaginesLlibre D4) 305)
    (= (PaginesLlibre D5) 150)
    (= (PaginesLlibre D6) 491)
    (= (PaginesLlibre D7) 391)
    (= (PaginesLlibre D8) 429)
    (= (PaginesLlibre D9) 289)

    (predecessor C3 C8)
    (predecessor B8 C4)
    (predecessor B6 B7)
    (predecessor A3 B5)
    (predecessor B6 C2)
    (predecessor A7 B7)
    (predecessor A0 A4)
    (predecessor A3 D2)
    (predecessor B3 D9)
    (predecessor C4 C9)
    (predecessor A0 C3)
    (predecessor B8 C3)
    (predecessor D0 D9)
    (predecessor B7 C2)
    (predecessor A5 C4)
    (predecessor A7 B2)
    (predecessor C6 D4)
    (predecessor A9 D2)
    (predecessor D5 D9)
    (predecessor D7 D8)
    (predecessor B7 D7)
    (predecessor D8 D9)
    (predecessor C2 C6)
    (predecessor A3 C1)
    (predecessor D3 D5)
    (predecessor B1 D7)
    (predecessor A5 B6)
    (predecessor B4 B5)
    (predecessor B2 B8)
    (predecessor D0 D8)
    (predecessor D7 D9)
    (predecessor A5 B7)
    (predecessor D4 D5)
    (predecessor A1 D9)

    (parallel C7 D6)
    (parallel B9 D6)
    (parallel D3 D8)
    (parallel A4 D9)
    (parallel B9 C2)
    (parallel B4 D8)

    (= (MesSeguent) 0)
    (= (PaginesMes) 0)
  )
  (:goal (forall (?ll) (imply (not (exists (?ll2) (predecessor ?ll ?ll2))) (llegit ?ll))))
)