import argparse
import subprocess
from generador_problema import generar_problema
import time

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
if args.e and args.o and str(args.e) != args.o[6]:
    raise Exception("Extensió i domini no coincideixen")
if args.e and args.m and (args.o or args.f):
    raise Exception("Si es genera un problema no cal especificar ni -o ni -f")
if args.O:
    command.append("-O")
if args.g:
    command.extend(["-g", str(args.g)])
if args.H:
    command.extend(["-h", str(args.H)])
if args.o:
    command.extend(["-o", args.o])
if args.f:
    command.extend(["-f", args.f])
elif args.e is not None and args.m:
    print("Generant problema: Extensió", args.e, "amb", args.m, "llibres")
    if args.ll:
        generar_problema(args.e, args.m, args.ll)
    else:
        generar_problema(args.e, args.m)
    command.extend(["-o", f"domini{args.e}.pddl", "-f", f"p{args.e}_{args.m}.pddl"])


# Executar el planificador
print()
for c in command:
    print(c, end=" ")
print()

time.sleep(2)
process = subprocess.Popen(command, stdout=subprocess.PIPE, text=True)

# Captura la sortida a la variable resultat_pla
resultat_pla = ""
for line in process.stdout:
    print(line, end="")
    resultat_pla += line
process.wait()

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
