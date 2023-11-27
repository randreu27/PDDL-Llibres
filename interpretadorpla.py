# Resultat del pla
resultat_pla = """step    0: LLEGIR_LLIBRE_AUXILIAR HP_I_LA_PEDRA_FILOSOFAL
        1: LLEGIR_LLIBRE_AUXILIAR PJ_EL_LLADRE_DEL_LLAMPEC
        2: LLEGIR_LLIBRE_AUXILIAR APUNTS_PA1
        3: LLEGIR_LLIBRE KANE_LA_PIRAMIDE_VERMELLA
        4: SEGUENT_MES
        5: LLEGIR_LLIBRE_AUXILIAR HP_I_LA_CAMBRA_SECRETA
        6: LLEGIR_LLIBRE_AUXILIAR PJ_EL_MAR_DELS_MONSTRES
        7: LLEGIR_LLIBRE_AUXILIAR APUNTS_PA2
        8: LLEGIR_LLIBRE KANE_EL_TRON_DE_FOC
        9: SEGUENT_MES
       10: LLEGIR_LLIBRE_AUXILIAR HP_I_EL_PRES_D_AZKABAN
       11: LLEGIR_LLIBRE_AUXILIAR PJ_LA_MALEDICCIO_DEL_TITA
       12: LLEGIR_LLIBRE_AUXILIAR APUNTS_CRA
       13: LLEGIR_LLIBRE_AUXILIAR APUNTS_FM
       14: LLEGIR_LLIBRE KANE_L_OMBRA_DE_LA_SERP
       15: SEGUENT_MES
       16: LLEGIR_LLIBRE_AUXILIAR APUNTS_ABIA
       17: LLEGIR_LLIBRE_AUXILIAR HP_I_EL_CALZE_DE_FOC
       18: LLEGIR_LLIBRE PJ_LA_BATALLA_DEL_LABERINT
       19: SEGUENT_MES
       20: LLEGIR_LLIBRE_AUXILIAR HP_I_LA_ORDRE_DEL_FENIX
       21: LLEGIR_LLIBRE PJ_L_ULTIM_HEROI_DE_L_OLIMP
       22: SEGUENT_MES
       23: LLEGIR_LLIBRE_AUXILIAR HO_L_HEROI_PERDUT
       24: LLEGIR_LLIBRE HP_I_EL_MISTERI_DEL_PRINCEP
       25: SEGUENT_MES
       26: LLEGIR_LLIBRE_AUXILIAR HP_I_LES_RELIQUIES_DE_LA_MORT
       27: LLEGIR_LLIBRE HO_EL_FILL_DE_NEPTU
       28: SEGUENT_MES
       29: LLEGIR_LLIBRE HO_LA_MARCA_D_ATENA
       30: SEGUENT_MES
       31: LLEGIR_LLIBRE HO_LA_CASA_D_HADES
       32: SEGUENT_MES
       33: LLEGIR_LLIBRE HO_LA_SANG_DE_L_OLIMP
       34: SEGUENT_MES
       35: LLEGIR_LLIBRE PJ_EL_CALZE_DELS_DEUS
       36: LLEGIR_LLIBRE_AUXILIAR MAGS_I_SEMIDEUS"""

# Diccionari per convertir números de mesos a lletres
mesos_lletres = {
    1: "Gener",
    2: "Febrer",
    3: "Març",
    4: "Abril",
    5: "Maig",
    6: "Juny",
    7: "Juliol",
    8: "Agost",
    9: "Setembre",
    10: "Octubre",
    11: "Novembre",
    12: "Desembre",
}


llibres_per_mes = {}
mes_actual = 12
any_actual = 2023

# Processar el resultat del pla
for linia in resultat_pla.split("\n"):
    if "SEGUENT_MES" in linia:
        mes_actual += 1
        if mes_actual > 12:
            mes_actual = 1
            any_actual += 1
    elif "LLEGIR_LLIBRE" in linia:
        parts = linia.split()
        llibre = parts[-1]
        if (any_actual, mes_actual) not in llibres_per_mes:
            llibres_per_mes[(any_actual, mes_actual)] = []
        llibres_per_mes[(any_actual, mes_actual)].append(llibre)

# Imprimir la sortida per pantalla
for (any, mes), llibres in sorted(llibres_per_mes.items()):
    print(f"{mesos_lletres[mes]} {any}:")
    for llibre in llibres:
        print(f"  {llibre}")
    print()
