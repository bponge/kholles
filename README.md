[[_TOC_]]

# Accès rapide

- Les fichiers PDF pour les colles CPGE ECx sont dans le répertoire PDF. Par exemple --> [colles_EC.pdf](PDF/colles_EC.pdf).


# Organisation

- Le répertoire [EC](EC) contient le document maître de la collection d'exercices pour les colles [EC/khec.tex](EC/khec.tex).
- Le répertoire [Colles](Colles) contient les documents maître de toutes les colles individuellement générées :
  * Chaque sour-répertoire est nommé d'après la date et la filière de la colle, par exemple **2020-11-16-ECE**, 
  * Deux scripts (`make_colles.sh` et `make_all_colles.sh`) permettent de générer les fichiers pdf automatiquement d'après le nom du dossier.
- Le répertoire [PDF](PDF) contient les résultats de l'intégration continu du projet par la plateforme GitHub, c'est à dire tous les fichiers PDF générés.
- Le répertoire [tex](tex) contient la configuration LaTeX pour l'écriture des documents :
  * [preamble.tex](tex/preamble.tex) précise la liste et la configuration des packages utilisés,
  * [mathwritings.tex](tex/mathwritings.tex) contient les macros utiles pour l'écriture des mathématiques,
  * [textexercises.tex](tex/textexercises.tex) contient des macros utiles pour l'écriture du texte,
  * [mathexercises.tex](tex/mathexercises.tex) contient la configuration du package xsim pour l'écriture des exercices,
  


# Comment utiliser ?

## Pour créer d'autres colles individuelles

1. Créer un répertoire d'après la date et la filière dans le répertoire [Colles](Colles) en ajoutant éventuellement ses initiales, par exemple *2021-03-11-ECS-OR*.
2. Créer autant de fichiers `.tex` que de colles en prenant pour modèle par exemple [Colles/2020-11-16-ECE/1.tex](Colles/2020-11-16-ECE/1.tex). 
3. Utiliser le script `make_colles.sh` pour générer les fichiers comme ceci : `./make_colles.sh 2021-03-11-ECS-OR`  en remplaçant le nom du répertoire. 

## Pour ajouter à la collection d'exercices

Contacter moi ;) et on discute. Pour l'instant j'ai organisé le répertoire [EC/exercices](EC/exercices) d'après le programme des colles. On peut continuer comme cela ou faire autrement. 







