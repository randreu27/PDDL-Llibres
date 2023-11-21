(define (problem prueba-lectura-mas-grande)
  (:domain llibresnivell1)
  
  (:objects
    llibre1 llibre2 llibre3 llibre4 llibre5 llibre6 llibre7 llibre8 llibre9 llibre10
  )
  
  (:init
    (delCataleg llibre1)
    (delCataleg llibre2)
    (delCataleg llibre3)
    (delCataleg llibre4)
    (delCataleg llibre5)
    (delCataleg llibre6)
    (delCataleg llibre7)
    (delCataleg llibre8)
    (delCataleg llibre9)
    (delCataleg llibre10)
    (predecessor llibre1 llibre2)
    (predecessor llibre1 llibre3)
    (predecessor llibre2 llibre4)
    (predecessor llibre2 llibre5)
    (predecessor llibre3 llibre6)
    (predecessor llibre4 llibre7)
    (predecessor llibre4 llibre8)
    (predecessor llibre5 llibre9)
    (predecessor llibre6 llibre10)
  )
  
  (:goal
    (and
      (llegit llibre10)
      (llegit llibre9)
    )
  )
)
