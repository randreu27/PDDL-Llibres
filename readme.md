# Pla de lectura - ABIA Desembre de 2023
## Execució
Es poden executar els fitxers o creats per nosaltres o generats aleatòriament amb metricff de la següent manera:
```
./metricff -o domainX.pddl -f problemX.pddl
```
on X és l'extensió del fitxer que es vol executar.

Alternativament, es pot executar el fitxer pla.py, que genera el pla amb metricff i l'interpreta amb mesos i anys reals.
```python
-O        Optimitzar el pla (plan-length per a extensió <=2, pàgines per mes per a extensió 3)
-g (int)  valor de g
-H (int)  valor de h (h minúscula és help)
-e (int)  Extensió del problema (0 a 3)
-m (int)  Mida del problema, número de llibres (2 a 26)
-ll (int) Llavor per generar el problema aleatori (42 per defecte)
-o (str)  Domini a utilitzar (dominiX.pddl)
-f (str)  Problema a utilitzar (problemaX.pddl)
```
Si es genera un problema aleatori, no cal especificar el domini ni el problema i a la inversa.
Exemple:
```python
python pla.py -O -e 0 -m 2 -ll 73
```

## Generació de problemes aleatoris
Es pot generar un problema aleatori amb el fitxer generate.py, que genera un problema amb les següents característiques:
```python
-e (int)  Extensió del problema (0 a 3)
-m (int)  Mida del problema, número de llibres (2 a 26)
-ll (int) Llavor per generar el problema aleatori (42 per defecte)
```
Exemple:
```python
python
>> from generador_problema import generar_problema
>> generar_problema(2, 15, 73)
```