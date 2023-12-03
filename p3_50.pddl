(define (problem p_3_50)
  (:domain llibresnivell3)

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
    (= (PaginesLlibre E0) 478)
    (= (PaginesLlibre E1) 371)
    (= (PaginesLlibre E2) 444)
    (= (PaginesLlibre E3) 232)
    (= (PaginesLlibre E4) 287)
    (= (PaginesLlibre E5) 339)
    (= (PaginesLlibre E6) 170)
    (= (PaginesLlibre E7) 373)
    (= (PaginesLlibre E8) 288)
    (= (PaginesLlibre E9) 433)

    (predecessor E2 E8)
    (predecessor B7 E9)
    (predecessor C2 C6)
    (predecessor A3 C1)
    (predecessor D3 D8)
    (predecessor B1 B7)
    (predecessor B0 C5)
    (predecessor A0 B3)
    (predecessor B1 E2)
    (predecessor C9 E8)
    (predecessor D5 E4)

    (parallel A5 B7)
    (parallel D5 E3)
    (parallel D7 E2)
    (parallel D4 D6)
    (parallel E1 E2)

    (= (MesSeguent) 0)
    (= (PaginesMes) 0)
  )
  (:goal (forall (?ll) (imply (not (exists (?ll2) (predecessor ?ll ?ll2))) (llegit ?ll))))
)