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

    ;Posterior a Herois de l'Olimp i a Kane
    Mags_i_SemiDeus
  )
  
  (:init
    (delCataleg HP_I_La_Pedra_Filosofal)
    (delCataleg HP_I_La_Cambra_Secreta)
    (delCataleg HP_I_El_Pres_D_Azkaban)
    (delCataleg HP_I_El_Calze_De_foc)
    (delCataleg HP_I_La_Ordre_Del_Fenix)
    (delCataleg HP_I_El_Misteri_Del_Princep)
    (delCataleg HP_I_Les_Reliquies_De_La_Mort)

    (delCataleg PJ_El_Lladre_Del_Llampec)
    (delCataleg PJ_El_Mar_Dels_Monstres)
    (delCataleg PJ_La_Malediccio_Del_Tita)
    (delCataleg PJ_La_Batalla_Del_Laberint)
    (delCataleg PJ_L_Ultim_Heroi_De_L_Olimp)
    (delCataleg PJ_El_Calze_Dels_Deus)

    (delCataleg HO_L_Heroi_Perdut)
    (delCataleg HO_El_Fill_De_Neptu)
    (delCataleg HO_La_Marca_D_Atena)
    (delCataleg HO_La_Casa_D_Hades)
    (delCataleg HO_La_Sang_De_L_Olimp)

    (delCataleg KANE_La_Piramide_Vermella)
    (delCataleg KANE_El_Tron_De_Foc)
    (delCataleg KANE_L_Ombra_De_La_Serp)

    (delCataleg Els_Deus_Grecs)
    (delCataleg Els_Herois_Grecs)
    (delCataleg Mags_i_SemiDeus)

    (delCataleg Apunts_PA1)
    (delCataleg Apunts_PA2)
    (delCataleg Apunts_CRA)
    (delCataleg Apunts_FM)
    (delCataleg Apunts_ABIA)


    (= (PaginesLlibre HP_I_La_Pedra_Filosofal) 301)
    (= (PaginesLlibre HP_I_La_Cambra_Secreta) 332)
    (= (PaginesLlibre HP_I_El_Pres_D_Azkaban) 416)
    (= (PaginesLlibre HP_I_El_Calze_De_foc) 704)
    (= (PaginesLlibre HP_I_La_Ordre_Del_Fenix) 768)
    (= (PaginesLlibre HP_I_El_Misteri_Del_Princep) 608)
    (= (PaginesLlibre HP_I_Les_Reliquies_De_La_Mort) 607)

    (= (PaginesLlibre PJ_El_Lladre_Del_Llampec) 364)
    (= (PaginesLlibre PJ_El_Mar_Dels_Monstres) 288)
    (= (PaginesLlibre PJ_La_Malediccio_Del_Tita) 316)
    (= (PaginesLlibre PJ_La_Batalla_Del_Laberint) 384)
    (= (PaginesLlibre PJ_L_Ultim_Heroi_De_L_Olimp) 384)
    (= (PaginesLlibre PJ_El_Calze_Dels_Deus) 256)
    (= (PaginesLlibre HO_L_Heroi_Perdut) 510)
    (= (PaginesLlibre HO_El_Fill_De_Neptu) 423)
    (= (PaginesLlibre HO_La_Marca_D_Atena) 553)
    (= (PaginesLlibre HO_La_Casa_D_Hades) 576)
    (= (PaginesLlibre HO_La_Sang_De_L_Olimp) 486)
    (= (PaginesLlibre KANE_La_Piramide_Vermella) 504)
    (= (PaginesLlibre KANE_El_Tron_De_Foc) 432)
    (= (PaginesLlibre KANE_L_Ombra_De_La_Serp) 379)
    (= (PaginesLlibre Els_Deus_Grecs) 416)
    (= (PaginesLlibre Els_Herois_Grecs) 512)
    (= (PaginesLlibre Mags_i_SemiDeus) 224)
    (= (PaginesLlibre Apunts_PA1) 135)
    (= (PaginesLlibre Apunts_PA2) 208)
    (= (PaginesLlibre Apunts_CRA) 92)
    (= (PaginesLlibre Apunts_FM) 81)
    (= (PaginesLlibre Apunts_ABIA) 200)


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

    ;(llegit HP_I_El_Pres_D_Azkaban)

    ;(cal_llegir HP_I_El_Misteri_Del_Princep)
    ;(cal_llegir Apunts_ABIA)

    (= (MesSeguent) 0)
    ;(= (MesActual) 0)
    (= (PaginesMes) 0)
  )

  (:goal
    (and
      ; Possible restricció de mesos (no aplicada)
      ;(< (MesActual) 13)

      ; llegir tots els llibres que cal llegir
      (forall (?ll) (imply (cal_llegir ?ll) (llegit ?ll)))
      (forall (?ll) (imply (and (not (exists (?ll2) (predecessor ?ll ?ll2)))
                                (not (exists (?para) (parallel ?para ?ll)))
                                (not (cal_llegir ?ll)))
                            (not (llegit ?ll))))
    )
  )

  (:metric maximize (PaginesMes))

)