import random
from math import sqrt


def generar_problema(extensió=3, n=10, llavor=42):
    abecedari = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    assert n >= 2, "El nombre de llibres ha de ser com a mínim 3"
    assert n <= 26, "No hi ha prou lletres per a representar tots els llibres"

    random.seed(llavor)

    # Creem el fitxer
    f = open(f"p{extensió}_{n}.pddl", "w")

    # Capçalera
    f.write(f"(define (problem p_{extensió}_{n})\n")
    f.write(f"  (:domain llibresnivell{extensió})\n")
    f.write("\n")

    # objects
    f.write("  (:objects\n\t")
    for i in range(n):
        f.write(f"  {abecedari[i]}")
    f.write("\n\t)\n")

    # init
    f.write("  (:init\n")

    # delCataleg
    for i in range(n):
        f.write(f"    (delCataleg {abecedari[i]})\n")
    f.write("\n")

    # PaginesLlibre
    if extensió == 3:
        for i in range(n):
            f.write(f"    (= (PaginesLlibre {abecedari[i]}) {random.randint(50, 800)})\n")
        f.write("\n")

    # predecessors
    predecessors = []
    for _ in range(int(sqrt(random.randint(1, n)))):
        x = random.randint(0, n - 2)
        a = abecedari[x]
        b = abecedari[random.randint(x + 1, n - 1)]

        if (a, b) not in predecessors:
            predecessors.append((a, b))
            f.write(f"    (predecessor {a} {b})\n")
    f.write("\n")

    # paral·lels
    if extensió >= 2:
        for _ in range(int(sqrt(random.randint(1, n)))):
            x = random.randint(0, n - 2)
            a, b = abecedari[x], abecedari[random.randint(x + 1, n - 1)]

            f.write(f"    (parallel {a} {b})\n")
        f.write("\n")

    f.write("  )\n")
    f.write("\n")

    # goal
    f.write("  (:goal (and ")

    # objectiu: llegir tots els llibres que no tenen successors (per eficiència)
    f.write("(forall (?ll) (imply (not (exists (?ll2) (predecessor ?ll ?ll2))) (llegit ?ll)))")
    f.write("))\n\n")

    # metric
    if extensió == 3:
        f.write("  (:metric maximize (PaginesMes))\n")
    f.write(")\n")
    f.close()
