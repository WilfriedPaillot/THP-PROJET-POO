# THP-TP-validant
## Mini jeu - il veulent tous ta POO

### Le projet

On va faire ce projet de façon progressive : on va déjà produire une version 1.0 en te guidant, puis on passera à une version 2.0 un peu plus recherchée et moins guidée pour conclure sur une version 3.0 où on te donnera juste les directives !

C'est un projet relativement long et complet : l'objectif est a minima que tu puisses finir la version 1.0 pour valider le projet (il faut bien sûr qu'elle marche !)

#### Version 1.0 : coder un combat entre 2 joueurs

Que faut-il pour faire un combat ? Moi j'ai en tête qu'il faut a minima :

- 2 joueurs ;
- Que chaque joueur ait un niveau de vie donné ;
- Que ce niveau de vie baisse à chaque attaque subie ;
- Si la vie atteint zéro, le personnage est mort.


#### Version 2.0 : créer un nouveau type de joueur

Nous allons maintenant créer un nouveau type de joueur qui va disposer de plus de compétences et de plus de choix : il sera joué par un humain

#### Version 3.0 : un jeu mieux organisé et plus d'ennemis

On aimerait bien que notre Fornite-like permette de combattre 10 ou 20 ennemis sur une même partie... Mais s'ils débarquent tous dès le début et s'acharnent sur notre pauvre HumanPlayer, même avec ses habilités spéciales il va pas durer longtemps.

On va mettre en place un système où les ennemies vont débarquer au compte-goutte, un peu comme dans les jeux où on tombe sur eux au hasard de tes déplacements sur la carte. Pour ça, on va suivre à la fois le nombre d'ennemis toujours présents dans le jeu ( = ennemis restant à éliminer) et le nombre d'ennemis qui sont "en vue" (= ennemis qu'on peut attaquer et qui peuvent nous attaquer en retour).

