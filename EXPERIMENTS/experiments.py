import subprocess


temps = {}
num_repeticions = 10

for e in range(4):
    for m in range(5, 85, 5):
        for i in range(num_repeticions):
            # Executar el planificador i guardar el stdout
            outtimed = 5
            if e == 1 and m > 50:
                outtimed = 25
            elif e >= 2 and 70 > m > 50:
                outtimed = m / 2 - 10
            elif e >= 2:
                outtimed = 60
            try:
                output = subprocess.check_output(
                    ["python", "pla.py", "-e", str(e), "-m", str(m), "-ll", str(i)],
                    text=True,
                    timeout=outtimed,
                )
                for line in output.split("\n"):
                    if line.startswith("Temps real"):
                        parts = line.split(":")
                        tmp = float(parts[-1].split()[0])
                        print(line)

            except subprocess.TimeoutExpired:
                print(
                    f"Temps real Extensió {str(e)} Mida {str(m)} Llavor {str(i)}: Timeout, {outtimed}s per defecte"
                )
                tmp = outtimed

            if (e, m) not in temps:
                temps[(e, m)] = [tmp]
            else:
                temps[(e, m)].append(tmp)

# Combinar les i repeticions i calcular la mitjana
print(temps)
for e, k in temps:
    temps[(e, k)] = sum(temps[(e, k)]) / num_repeticions

print("\n\nMitjanes temps", temps)
