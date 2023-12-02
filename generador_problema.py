import random
from math import sqrt


def generar_problema(extensió=3, n=10, llavor=42):
    assert n >= 2, "El nombre de llibres ha de ser com a mínim 2"
    assert n <= 2600, "No hi ha prou lletres per a representar tots els llibres"

    # només afegim els llibres que necessitem
    llibres, i = [], 0
    for lletra in "ABCDEFGHIJKLMNOPQRSTUVWXYZ":
        if len(llibres) >= n:
            break
        while i < 100 and len(llibres) < n:
            llibres.append(f"{lletra}{i:02d}")
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
            # lognormal(mu, sigma) -> mu|mitjana = ln(350), sigma|stddev = 0.5
            x = max(min(50, int(random.lognormvariate(5.858, 0.5))), 800)
            f.write(f"\n    (= (PaginesLlibre {llibre}) {x})")
        f.write("\n")

    # predecessors
    predecessors = []
    for _ in range(random.randint(1, n//2)):
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
    if extensió >= 2:
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
