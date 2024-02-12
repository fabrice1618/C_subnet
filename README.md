## Sujet : Calcul d'adresse de réseau en C

### Objectif :
L'objectif est de vous familiariser progressivement avec le calcul des adresses de réseau en utilisant le langage de programmation C. Vous allez écrire un programme qui prend en entrée une adresse IP et un masque de sous-réseau, et qui calcule différentes informations relatives au réseau.

### Partie 1 : Validation des entrées utilisateur

#### Tâches à réaliser :
1. Définissez une fonction pour valider une adresse IP.
2. Définissez une fonction pour valider un masque de sous-réseau.

#### Améliorations de fiabilité et sécurité :
- Validez que chaque octet de l'adresse IP et du masque de sous-réseau est compris entre 0 et 255.
- Assurez-vous que le masque de sous-réseau est valide, c'est-à-dire qu'il est composé d'une séquence de bits à 1 suivie d'une séquence de bits à 0.

#### Conseils :
- Une adresse IP valide est une séquence de quatre nombres entiers compris entre 0 et 255, séparés par des points.
- Un masque de sous-réseau valide est une séquence de quatre nombres binaires consécutifs à 1, suivis d'une séquence de zéros, séparés par des points.

#### Exemples à tester :
- Adresse IP valide : 192.168.1.10
- Adresse IP invalide : 256.168.1.10
- Masque de sous-réseau valide : 255.255.255.0
- Masque de sous-réseau invalide : 255.255.255.138

### Partie 2 : Calcul de l'adresse de réseau

#### Tâches à réaliser :
1. Écrivez une fonction pour calculer l'adresse de réseau à partir de l'adresse IP et du masque de sous-réseau.

#### Conseils :
- Pour calculer l'adresse de réseau, effectuez un ET logique bit à bit entre l'adresse IP et le masque de sous-réseau.

#### Exemples à tester :
- Adresse IP : 192.168.1.10, Masque de sous-réseau : 255.255.255.0
- Adresse IP : 10.0.0.1, Masque de sous-réseau : 255.0.0.0
- Adresse IP : 192.168.3.96, Masque de sous-réseau : 255.255.255.192

### Partie 3 : Calcul de l'adresse de broadcast

#### Tâches à réaliser :
1. Définissez une fonction pour calculer l'adresse de broadcast à partir de l'adresse de réseau et du masque de sous-réseau.

#### Conseils :
- Pour calculer l'adresse de broadcast, effectuez un OU logique bit à bit entre l'adresse de réseau et le complément du masque de sous-réseau.

#### Exemples à tester :
- Adresse de réseau : 192.168.1.0, Masque de sous-réseau : 255.255.255.0
- Adresse de réseau : 10.0.0.0, Masque de sous-réseau : 255.0.0.0

### Partie 4 : Calcul de la notation CIDR

#### Tâches à réaliser :
1. Écrivez une fonction pour calculer la notation CIDR du réseau à partir du masque de sous-réseau.

#### Conseils :
- Pour calculer la notation CIDR, comptez le nombre de bits mis à 1 dans le masque de sous-réseau.

#### Exemples à tester :
- Masque de sous-réseau : 255.255.255.0 (CIDR attendu : /24)
- Masque de sous-réseau : 255.0.0.0 (CIDR attendu : /8)

### Partie 5 : Intégration et affichage des résultats

#### Tâches à réaliser :
1. Intégrez toutes les fonctions précédentes dans la fonction principale (`main`) pour calculer et afficher les résultats.

#### Conseils :
- Assurez-vous d'afficher les résultats de manière claire et compréhensible pour l'utilisateur.

#### Test :
- Testez le programme complet avec différents exemples d'adresses IP et de masques de sous-réseau pour vérifier son bon fonctionnement.

Bonne chance !
