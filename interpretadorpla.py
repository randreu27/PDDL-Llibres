# Resultat del pla
resultat_pla = """step    0: LLEGIR_LLIBRE HP_I_LA_PEDRA_FILOSOFAL
        1: LLEGIR_LLIBRE_AUXILIAR PJ_EL_LLADRE_DEL_LLAMPEC
        2: LLEGIR_LLIBRE_AUXILIAR APUNTS_PA1
        3: SEGUENT_MES
        4: LLEGIR_LLIBRE ELS_HEROIS_GRECS
        5: LLEGIR_LLIBRE_AUXILIAR PJ_EL_MAR_DELS_MONSTRES
        6: SEGUENT_MES
        7: LLEGIR_LLIBRE KANE_LA_PIRAMIDE_VERMELLA
        8: SEGUENT_MES
        9: LLEGIR_LLIBRE KANE_EL_TRON_DE_FOC
       10: LLEGIR_LLIBRE_AUXILIAR PJ_LA_MALEDICCIO_DEL_TITA
       11: SEGUENT_MES
       12: LLEGIR_LLIBRE ELS_DEUS_GRECS
       13: LLEGIR_LLIBRE_AUXILIAR PJ_LA_BATALLA_DEL_LABERINT
       14: SEGUENT_MES
       15: LLEGIR_LLIBRE KANE_L_OMBRA_DE_LA_SERP
       16: LLEGIR_LLIBRE_AUXILIAR PJ_L_ULTIM_HEROI_DE_L_OLIMP
       17: SEGUENT_MES
       18: LLEGIR_LLIBRE APUNTS_PA2
       19: LLEGIR_LLIBRE_AUXILIAR HO_L_HEROI_PERDUT
       20: SEGUENT_MES
       21: LLEGIR_LLIBRE HP_I_LA_CAMBRA_SECRETA
       22: LLEGIR_LLIBRE_AUXILIAR HO_EL_FILL_DE_NEPTU
       23: SEGUENT_MES
       24: LLEGIR_LLIBRE HP_I_EL_PRES_D_AZKABAN
       25: SEGUENT_MES
       26: LLEGIR_LLIBRE HP_I_EL_CALZE_DE_FOC
       27: SEGUENT_MES
       28: LLEGIR_LLIBRE HP_I_LA_ORDRE_DEL_FENIX
       29: SEGUENT_MES
       30: LLEGIR_LLIBRE HP_I_EL_MISTERI_DEL_PRINCEP
       31: SEGUENT_MES
       32: LLEGIR_LLIBRE HP_I_LES_RELIQUIES_DE_LA_MORT
       33: SEGUENT_MES
       34: LLEGIR_LLIBRE APUNTS_CRA
       35: LLEGIR_LLIBRE_AUXILIAR HO_LA_MARCA_D_ATENA
       36: SEGUENT_MES
       37: LLEGIR_LLIBRE APUNTS_FM
       38: LLEGIR_LLIBRE_AUXILIAR HO_LA_CASA_D_HADES
       39: SEGUENT_MES
       40: LLEGIR_LLIBRE APUNTS_ABIA
       41: LLEGIR_LLIBRE_AUXILIAR HO_LA_SANG_DE_L_OLIMP
       42: SEGUENT_MES
       43: LLEGIR_LLIBRE_AUXILIAR MAGS_I_SEMIDEUS
       44: LLEGIR_LLIBRE PJ_EL_CALZE_DELS_DEUS"""

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
