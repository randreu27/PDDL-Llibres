import random


def generar_problema(domini=3, n=10, llavor=42):
    abecedari = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    random.seed(llavor)

    # Creem el fitxer
    f = open(f"p{domini}_{n}.pddl", "w")

    # Capçalera
    f.write(f"(define (problem random_{domini}_{n})\n")
    f.write(f"  (:domain llibresnivell{domini})\n")
    f.write("\n")

    # objects
    f.write("  (:objects\n")
    for i in range(n):
        f.write(f"{abecedari[i]}\n")
    f.write("  )\n")
    f.write("\n")

    # init
    f.write("  (:init\n")

    # delCataleg
    for i in range(n):
        f.write(f"    (delCataleg {abecedari[i]})\n")
    f.write("\n")

    # PaginesLlibre
    for i in range(n):
        f.write(f"    (= (PaginesLlibre {abecedari[i]}) {random.randint(50, 800)})\n")
    f.write("\n")

    # predecessors
    predecessors = []
    for _ in range(random.randint(1, n)):
        a = abecedari[random.randint(0, n - 2)]
        b = abecedari[random.randint(abecedari.index(a) + 1, n - 1)]
        predecessors.append((a, b))
        f.write(f"    (predecessor {a} {b})\n")
    f.write("\n")

    # paral·lels
    for _ in range(random.randint(1, n)):
        x, y = random.randint(0, n - 1), random.randint(0, n - 1)
        while x == y:
            y = random.randint(0, n - 1)
        a, b = abecedari[x], abecedari[y]
        f.write(f"    (parallel {a} {b})\n")
    f.write("\n")

    f.write("  )\n")
    f.write("\n")

    # goal
    f.write("  (:goal (and ")

    # objectiu: llegir tots els llibres que no tenen predecessors (per eficiència)
    f.write("(forall (?ll) (imply (not (exists (?ll2) (predecessor ?ll ?ll2))) (llegit ?ll)))")
    f.write("))\n\n")

    # metric
    f.write("  (:metric maximize (PaginesMes))\n")
    f.write(")\n")
    f.close()
