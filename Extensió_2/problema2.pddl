(define (problem hp_pjo_abia)
  (:domain llibresnivell2)
  
  (:objects
    ;Exemple Encadenat:
    ;Harry Potter
    HP_I_La_Pedra_Filosofal               HP_I_La_Cambra_Secreta 
    HP_I_El_Pres_De_Azkaban               HP_I_El_Calze_De_foc
    HP_I_La_Ordre_Del_Fenix               HP_I_El_Misteri_Del_Princep
    HP_I_Les_Reliquies_De_La_Mort_Part1   HP_I_Les_Reliquies_De_La_Mort_Part2

    ;Percy Jackson i els Déus de l'Olimp
    PJ_El_Lladre_Del_Llampec              PJ_El_Mar_Dels_Monstres
    PJ_La_Malediccio_Del_Tita             PJ_La_Batalla_Del_Laberint
    PJ_L_Ultim_Heroi_De_L_Olimp           PJ_El_Calze_Dels_Deus
    ;Percy Jackson i els Herois de l'Olimp
    HO_L_Heroi_Perdut                     HO_El_Fill_De_Neptu
    HO_La_Marca_D_Atena                   HO_La_Casa_D_Hades
    HO_La_Sang_De_L_Olimp

    ;Exemple NO encadenat:
    Apunts_PA1 Apunts_PA2 Apunts_CRA Apunts_FM Apunts_ABIA
      
    ;Llibres paral·lels a:
    ;Herois de l'Olimp
    KANE_La_Piramide_Vermella             KANE_La_Malediccio_De_Ra
    KANE_La_Sombra_De_La_Serp

    ;Percy Jackson i els Déus de l'Olimp




  )
  
  (:init
    (parallel L_Heroi_Perdut PJ_El_Lladre_Del_Llampec)
    (parallel L_Heroi_Perdut PJ_El_Mar_Dels_Monstres)
    (parallel L_Heroi_Perdut PJ_La_Malediccio_Del_Tita)
    (parallel L_Heroi_Perdut PJ_La_Batalla_Del_Laberint)
    (parallel L_Heroi_Perdut PJ_L_Ultim_Heroi_De_L_Olimp)

    (parallel Les_Proves_D_Apolo PJ_El_Lladre_Del_Llampec)
    (parallel Les_Proves_D_Apolo PJ_El_Mar_Dels_Monstres)
    (parallel Les_Proves_D_Apolo PJ_La_Malediccio_Del_Tita)
    (parallel Les_Proves_D_Apolo PJ_La_Batalla_Del_Laberint)
    (parallel Les_Proves_D_Apolo PJ_L_Ultim_Heroi_De_L_Olimp)

    (parallel Mags_i_SemiDeus PJ_El_Lladre_Del_Llampec)
    (parallel Mags_i_SemiDeus PJ_El_Mar_Dels_Monstres)
    (parallel Mags_i_SemiDeus PJ_La_Malediccio_Del_Tita)
    (parallel Mags_i_SemiDeus PJ_La_Batalla_Del_Laberint)
    (parallel Mags_i_SemiDeus PJ_L_Ultim_Heroi_De_L_Olimp)

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
    (delCataleg PJ_El_Calze_Dels_Deus)

    (delCataleg Apunts_PA1)
    (delCataleg Apunts_PA2)
    (delCataleg Apunts_CRA)
    (delCataleg Apunts_FM)
    (delCataleg Apunts_ABIA)


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
    (predecessor PJ_L_Ultim_Heroi_De_L_Olimp PJ_El_Calze_Dels_Deus)

    (predecessor Apunts_PA1 Apunts_PA2)
    (predecessor Apunts_PA2 Apunts_ABIA)
    (predecessor Apunts_CRA Apunts_ABIA)
    (predecessor Apunts_FM Apunts_ABIA)

    (= (MesSeguent) 0)
    (= (MesActual) 0)
    (= (hi_ha_parallel) 0)
  )
  
  (:goal
    (and
      (llegit HP_I_Les_Reliquies_De_La_Mort_Part2)
      (llegit PJ_El_Calze_Dels_Deus)
      (llegit Apunts_ABIA)
      (< (MesActual) 13)
    )
  )
)

