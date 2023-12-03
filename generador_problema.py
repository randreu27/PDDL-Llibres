import random
from math import sqrt


def generar_problema(extensió=3, n=10, llavor=42):
    assert n >= 2, "El nombre de llibres ha de ser com a mínim 2"
    assert n <= 260, "La mida màxima del problema és de 260 llibres"

    # només afegim els llibres que necessitem
    llibres, i = [], 0
    for lletra in "ABCDEFGHIJKLMNOPQRSTUVWXYZ":
        if len(llibres) >= n:
            break
        while i < 10 and len(llibres) < n:
            llibres.append(f"{lletra}{i}")
            i += 1
        i = 0

    random.seed(llavor)

    # Creem el fitxer
    f = open(f"p{extensió}_{n}.pddl", "w")

    # Capçalera
    f.write(f"(define (problem p_{extensió}_{n})\n")
    f.write(f"  (:domain llibresnivell{extensió})\n\n")

    # objects
    f.write("  (:objects\n\t")
    for llibre in llibres:
        f.write(f"  {llibre}")
    f.write("\n\t)\n")

    # init
    f.write("  (:init")

    # delCataleg
    for llibre in llibres:
        f.write(f"\n    (delCataleg {llibre})")
    f.write("\n")

    # PaginesLlibre
    if extensió == 3:
        for llibre in llibres:
            x = min(max(50, int(random.lognormvariate(5.778, 0.4))), 800)
            f.write(f"\n    (= (PaginesLlibre {llibre}) {x})")
        f.write("\n")

    # predecessors
    predecessors = []
    for _ in range(random.randint(1, n)):
        x = random.randint(0, n - 2)
        a = llibres[x]
        b = llibres[random.randint(x + 1, n - 1)]

        if (a, b) not in predecessors:
            predecessors.append((a, b))
            f.write(f"\n    (predecessor {a} {b})")
    f.write("\n")

    # paral·lels
    if extensió >= 2:
        for _ in range(int(sqrt(random.randint(1, n)))):
            x = random.randint(0, n - 2)
            a, b = llibres[x], llibres[random.randint(x + 1, n - 1)]

            f.write(f"\n    (parallel {a} {b})")
        f.write("\n")

    # fluents
    if extensió > 0:
        f.write("\n    (= (MesSeguent) 0)")
    if extensió == 3:
        f.write("\n    (= (PaginesMes) 0)")

    f.write("\n  )")

    # goal
    f.write("\n  (:goal ")
    # objectiu: llegir tots els llibres que no tenen successors (per eficiència)
    f.write("(forall (?ll) (imply (not (exists (?ll2) (predecessor ?ll ?ll2))) (llegit ?ll))))")

    f.write("\n)")
    f.close()
