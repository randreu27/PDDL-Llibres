import argparse
import subprocess
from generador_problema import generar_problema

parser = argparse.ArgumentParser()


parser.add_argument("-e", type=int, help="extensió")
parser.add_argument("-m", type=int, help="mida")
parser.add_argument("-ll", type=int, help="llavor")
parser.add_argument("-f", type=int, help="problema")
parser.add_argument("-O", action='store_true', help="Optimitzat")
parser.add_argument("-g", type=int, help="g value")
parser.add_argument("-h", type=int, help="h value")


args = parser.parse_args()


command = "./metricff"
if args.O:
    command += " -O"
if args.g:
    command += f" -g {str(args.g)}"
if args.h:
    command += f" -h {str(args.h)}"
if args.d and args.m:
    if args.s:
        generar_problema(args.e, args.m, args.ll)
    else:
        generar_problema(args.e, args.m)
    command += f" -f random_{args.e}_{args.m}.pddl"
elif args.f:
    command += f" -f {args.f}.pddl"


# Executar el planificador
subprocess.run(command)

resultat_pla = ""

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
