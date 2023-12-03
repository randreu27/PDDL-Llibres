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

## Experiments
Els experiments s'han realitzat amb el fitxer experiments.py, que executa 10 iteracions (amb llavors del 0 al 9) de cada problema amb mateixa entensió i mida, i guarda el temps d'execució real (el comptador de temps de metricff no és gaire fiable a Windows) de cada execució i també calcula la mitjana.
```python
python experiments.py
```
Si un problema triga més d'un nombre determinat de segons que depèn de l'extensió i la mida del problema, s'atura l'execució i es passa al següent problema.

## Interpretació i visualització dels resultats
Els resultats s'han interpretat i visualitzat amb el fitxer interpretvisual.py, que mostra els resultats de cada problema en un boxplot i un diagrama on compara els temps de cada problema segons la seva extensió i mida.
```python
python interpretvisual.py
```