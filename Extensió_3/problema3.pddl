(define (problem hp_pj_abia)
  (:domain llibresnivell3)
  
  (:objects
    ;Exemple Encadenat:
    ;Harry Potter
    HP_I_La_Pedra_Filosofal               HP_I_La_Cambra_Secreta 
    HP_I_El_Pres_D_Azkaban                HP_I_El_Calze_De_foc
    HP_I_La_Ordre_Del_Fenix               HP_I_El_Misteri_Del_Princep
    HP_I_Les_Reliquies_De_La_Mort

    ;Percy Jackson i els Déus de l'Olimp
    PJ_El_Lladre_Del_Llampec              PJ_El_Mar_Dels_Monstres
    PJ_La_Malediccio_Del_Tita             PJ_La_Batalla_Del_Laberint
    PJ_L_Ultim_Heroi_De_L_Olimp           PJ_El_Calze_Dels_Deus

    ;Herois de l'Olimp
    HO_L_Heroi_Perdut                     HO_El_Fill_De_Neptu
    HO_La_Marca_D_Atena                   HO_La_Casa_D_Hades
    HO_La_Sang_De_L_Olimp

    ;Exemple NO encadenat:
    Apunts_PA1 Apunts_PA2 Apunts_CRA Apunts_FM Apunts_ABIA
      
    ;Llibres paral·lels a:
    ;Percy Jackson i els Déus de l'Olimp
    Els_Deus_Grecs                        Els_Herois_Grecs

    ;Percy Jackson i els Herois de l'Olimp
    KANE_La_Piramide_Vermella             KANE_El_Tron_De_Foc
    KANE_L_Ombra_De_La_Serp

    ;Posterior a Herois de l'Olimp, Kane
    Mags_i_SemiDeus
  )
  
  (:init
    (delCataleg HP_I_La_Pedra_Filosofal 301)
    (delCataleg HP_I_La_Cambra_Secreta 332)
    (delCataleg HP_I_El_Pres_D_Azkaban 416)
    (delCataleg HP_I_El_Calze_De_foc 704)
    (delCataleg HP_I_La_Ordre_Del_Fenix 768)
    (delCataleg HP_I_El_Misteri_Del_Princep 608)
    (delCataleg HP_I_Les_Reliquies_De_La_Mort 607)

    (delCataleg PJ_El_Lladre_Del_Llampec 364)
    (delCataleg PJ_El_Mar_Dels_Monstres 288)
    (delCataleg PJ_La_Malediccio_Del_Tita 316)
    (delCataleg PJ_La_Batalla_Del_Laberint 384)
    (delCataleg PJ_L_Ultim_Heroi_De_L_Olimp 384)
    (delCataleg PJ_El_Calze_Dels_Deus 256)

    (delCataleg HO_L_Heroi_Perdut 510)
    (delCataleg HO_El_Fill_De_Neptu 423)
    (delCataleg HO_La_Marca_D_Atena 553)
    (delCataleg HO_La_Casa_D_Hades 576)
    (delCataleg HO_La_Sang_De_L_Olimp 486)

    (delCataleg KANE_La_Piramide_Vermella 504)
    (delCataleg KANE_El_Tron_De_Foc 432)
    (delCataleg KANE_L_Ombra_De_La_Serp 379)

    (delCataleg Els_Deus_Grecs 416)
    (delCataleg Els_Herois_Grecs 512)
    (delCataleg Mags_i_SemiDeus)

    (delCataleg Apunts_PA1 135)
    (delCataleg Apunts_PA2 208)
    (delCataleg Apunts_CRA 92)
    (delCataleg Apunts_FM 61)
    (delCataleg Apunts_ABIA 200)


    (predecessor HP_I_La_Pedra_Filosofal HP_I_La_Cambra_Secreta)
    (predecessor HP_I_La_Cambra_Secreta HP_I_El_Pres_D_Azkaban)
    (predecessor HP_I_El_Pres_D_Azkaban HP_I_El_Calze_De_foc)
    (predecessor HP_I_El_Calze_De_foc HP_I_La_Ordre_Del_Fenix)
    (predecessor HP_I_La_Ordre_Del_Fenix HP_I_El_Misteri_Del_Princep)
    (predecessor HP_I_El_Misteri_Del_Princep HP_I_Les_Reliquies_De_La_Mort)

    (predecessor PJ_El_Lladre_Del_Llampec PJ_El_Mar_Dels_Monstres)
    (predecessor PJ_El_Mar_Dels_Monstres PJ_La_Malediccio_Del_Tita)
    (predecessor PJ_La_Malediccio_Del_Tita PJ_La_Batalla_Del_Laberint)
    (predecessor PJ_La_Batalla_Del_Laberint PJ_L_Ultim_Heroi_De_L_Olimp)
    (predecessor PJ_L_Ultim_Heroi_De_L_Olimp PJ_El_Calze_Dels_Deus)

    (predecessor PJ_L_Ultim_Heroi_De_L_Olimp HO_L_Heroi_Perdut)

    (predecessor HO_L_Heroi_Perdut HO_El_Fill_De_Neptu)
    (predecessor HO_El_Fill_De_Neptu HO_La_Marca_D_Atena)
    (predecessor HO_La_Marca_D_Atena HO_La_Casa_D_Hades)
    (predecessor HO_La_Casa_D_Hades HO_La_Sang_De_L_Olimp)
    (predecessor HO_La_Sang_De_L_Olimp PJ_El_Calze_Dels_Deus)

    (predecessor KANE_La_Piramide_Vermella KANE_El_Tron_De_Foc)
    (predecessor KANE_El_Tron_De_Foc KANE_L_Ombra_De_La_Serp)

    (predecessor HO_La_Sang_De_L_Olimp Mags_i_SemiDeus)
    (predecessor KANE_L_Ombra_De_La_Serp Mags_i_SemiDeus)

    (predecessor Apunts_PA1 Apunts_PA2)
    (predecessor Apunts_PA2 Apunts_ABIA)
    (predecessor Apunts_CRA Apunts_ABIA)
    (predecessor Apunts_FM Apunts_ABIA)


    (parallel Els_Deus_Grecs PJ_El_Lladre_Del_Llampec)
    (parallel Els_Deus_Grecs PJ_El_Mar_Dels_Monstres)
    (parallel Els_Deus_Grecs PJ_La_Malediccio_Del_Tita)
    (parallel Els_Deus_Grecs PJ_La_Batalla_Del_Laberint)
    (parallel Els_Deus_Grecs PJ_L_Ultim_Heroi_De_L_Olimp)

    (parallel Els_Herois_Grecs PJ_El_Lladre_Del_Llampec)
    (parallel Els_Herois_Grecs PJ_El_Mar_Dels_Monstres)
    (parallel Els_Herois_Grecs PJ_La_Malediccio_Del_Tita)
    (parallel Els_Herois_Grecs PJ_La_Batalla_Del_Laberint)
    (parallel Els_Herois_Grecs PJ_L_Ultim_Heroi_De_L_Olimp)

    (parallel Els_Deus_Grecs HO_L_Heroi_Perdut)
    (parallel Els_Deus_Grecs HO_El_Fill_De_Neptu)
    (parallel Els_Deus_Grecs HO_La_Marca_D_Atena)
    (parallel Els_Deus_Grecs HO_La_Casa_D_Hades)
    (parallel Els_Deus_Grecs HO_La_Sang_De_L_Olimp)

    (parallel Els_Herois_Grecs HO_L_Heroi_Perdut)
    (parallel Els_Herois_Grecs HO_El_Fill_De_Neptu)
    (parallel Els_Herois_Grecs HO_La_Marca_D_Atena)
    (parallel Els_Herois_Grecs HO_La_Casa_D_Hades)
    (parallel Els_Herois_Grecs HO_La_Sang_De_L_Olimp)

    (parallel KANE_La_Piramide_Vermella HO_L_Heroi_Perdut)
    (parallel KANE_La_Piramide_Vermella HO_El_Fill_De_Neptu)
    (parallel KANE_La_Piramide_Vermella HO_La_Marca_D_Atena)
    (parallel KANE_La_Piramide_Vermella HO_La_Casa_D_Hades)
    (parallel KANE_La_Piramide_Vermella HO_La_Sang_De_L_Olimp)
    (parallel KANE_El_Tron_De_Foc HO_L_Heroi_Perdut)
    (parallel KANE_El_Tron_De_Foc HO_El_Fill_De_Neptu)
    (parallel KANE_El_Tron_De_Foc HO_La_Marca_D_Atena)
    (parallel KANE_El_Tron_De_Foc HO_La_Casa_D_Hades)
    (parallel KANE_El_Tron_De_Foc HO_La_Sang_De_L_Olimp)
    (parallel KANE_L_Ombra_De_La_Serp HO_L_Heroi_Perdut)
    (parallel KANE_L_Ombra_De_La_Serp HO_El_Fill_De_Neptu)
    (parallel KANE_L_Ombra_De_La_Serp HO_La_Marca_D_Atena)
    (parallel KANE_L_Ombra_De_La_Serp HO_La_Casa_D_Hades)
    (parallel KANE_L_Ombra_De_La_Serp HO_La_Sang_De_L_Olimp)


    (= (MesSeguent) 0)
    ;(= (MesActual) 0)
    (= (PaginesActuals) 0)
    (= (hi_ha_parallel) 0)
  )
  
  (:goal
    (and
      (llegit HP_I_Les_Reliquies_De_La_Mort)
      (llegit PJ_El_Calze_Dels_Deus)
      (llegit Apunts_ABIA)
      (llegit Mags_i_SemiDeus)
      (llegit KANE_L_Ombra_De_La_Serp)
      ;(< (MesActual) 13)
    )
  )
)

