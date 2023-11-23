(define (problem hp_pjo)
  (:domain llibresnivell1)
  
  (:objects
    ;Exemple Encadenat:
    HP_I_La_Pedra_Filosofal               HP_I_La_Cambra_Secreta 
    HP_I_El_Pres_De_Azkaban               HP_I_El_Calze_De_foc
    HP_I_La_Ordre_Del_Fenix               HP_I_El_Misteri_Del_Princep
    HP_I_Les_Reliquies_De_La_Mort_Part1   HP_I_Les_Reliquies_De_La_Mort_Part2

    PJ_El_Lladre_Del_Llampec              PJ_El_Mar_Dels_Monstres
    PJ_La_Malediccio_Del_Tita             PJ_La_Batalla_Del_Laberint
    PJ_L_Ultim_Heroi_De_L_Olimp

    ;Exemple NO encadenat: 
    PA1 PA2 CRA FM ABIA

  )
  
  (:init
    (delCataleg HP_I_La_Pedra_Filosofal)
    (delCataleg HP_I_La_Cambra_Secreta)
    (delCataleg HP_I_El_Pres_De_Azkaban)
    (delCataleg HP_I_El_Calze_De_foc)
    (delCataleg HP_I_La_Ordre_Del_Fenix)
    (delCataleg HP_I_El_Misteri_Del_Princep)
    (delCataleg HP_I_Les_Reliquies_De_La_Mort_Part1)
    (delCataleg HP_I_Les_Reliquies_De_La_Mort_Part2)

    (delCataleg PJ_El_Lladre_Del_Llampec)
    (delCataleg PJ_El_Mar_Dels_Monstres)
    (delCataleg PJ_La_Malediccio_Del_Tita)
    (delCataleg PJ_La_Batalla_Del_Laberint)
    (delCataleg PJ_L_Ultim_Heroi_De_L_Olimp)

    (delCataleg PA1)
    (delCataleg PA2)
    (delCataleg CRA)
    (delCataleg FM)
    (delCataleg ABIA)

    (predecessor HP_I_La_Pedra_Filosofal HP_I_La_Cambra_Secreta)
    (predecessor HP_I_La_Cambra_Secreta HP_I_El_Pres_De_Azkaban)
    (predecessor HP_I_El_Pres_De_Azkaban HP_I_El_Calze_De_foc)
    (predecessor HP_I_El_Calze_De_foc HP_I_La_Ordre_Del_Fenix)
    (predecessor HP_I_La_Ordre_Del_Fenix HP_I_El_Misteri_Del_Princep)
    (predecessor HP_I_El_Misteri_Del_Princep HP_I_Les_Reliquies_De_La_Mort_Part1)
    (predecessor HP_I_Les_Reliquies_De_La_Mort_Part1 HP_I_Les_Reliquies_De_La_Mort_Part2)

    (predecessor PJ_El_Lladre_Del_Llampec PJ_El_Mar_Dels_Monstres)
    (predecessor PJ_El_Mar_Dels_Monstres PJ_La_Malediccio_Del_Tita)
    (predecessor PJ_La_Malediccio_Del_Tita PJ_La_Batalla_Del_Laberint)
    (predecessor PJ_La_Batalla_Del_Laberint PJ_L_Ultim_Heroi_De_L_Olimp)

    (predecessor PA1 PA2)
    (predecessor PA2 ABIA)
    (predecessor CRA ABIA)
    (predecessor FM ABIA)

    (= (FerCanvi) 0)
  )
  
  (:goal
    (and
      (llegit HP_I_Les_Reliquies_De_La_Mort_Part2)
      (llegit PJ_L_Ultim_Heroi_De_L_Olimp)
      (llegit ABIA)
    )
  )
)

