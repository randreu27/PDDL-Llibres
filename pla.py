import argparse
import subprocess
from generador_problema import generar_problema

parser = argparse.ArgumentParser()


parser.add_argument("-e", type=int)
parser.add_argument("-m", type=int)
parser.add_argument("-ll", type=int)
parser.add_argument("-o", type=str)
parser.add_argument("-f", type=str)
parser.add_argument("-O", action='store_true')
parser.add_argument("-g", type=int)
parser.add_argument("-H", type=int)


args = parser.parse_args()


command = ["./metricff"]
if args.O:
    command.append("-O")
if args.g:
    command.extend(["-g", str(args.g)])
if args.H:
    command.extend(["-h", str(args.h)])
if args.o:
    command.extend(["-o", args.o])
if args.e and args.m:
    if args.ll:
        generar_problema(args.e, args.m, args.ll)
    else:
        generar_problema(args.e, args.m)
    command.extend(["-f", f"p_{args.e}_{args.m}.pddl"])
elif args.f:
    command.extend(["-f", args.f])


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
