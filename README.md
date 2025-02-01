# Sujet : Calcul d'adresse de réseau en C


## Objectif :
L'objectif est de vous familiariser progressivement avec le calcul des adresses de réseau en utilisant le langage de programmation C. Vous allez écrire un programme qui prend en entrée une adresse IP et un masque de sous-réseau, et qui calcule différentes informations relatives au réseau.

## Partie 1 : Saisie d'une adresse IP

Définissez une fonction pour saisir une adresse IP. L'utilisateur saisit une adresse IP sous la forme nnn.nnn.nnn.nnn. La fonction retourne l'adresse IP sous la forme d'un entier 32 bits.

### Validation des données saisies :
Une adresse IP valide est une séquence de quatre nombres entiers compris entre 0 et 255, séparés par des points.

### Exemples à tester :
```bash
$ make partie1
gcc -o partie1 partie1.c

$ ./partie1
Saisir une adresse IP: 192.168.10.1
adresse IP (32 bits): 3232238081

$ ./partie1
Saisir une adresse IP: 192.168.hello.world
Erreur saisie incorrecte

$ ./partie1
Saisir une adresse IP: 256.1.2.3
Erreur saisie incorrecte: 256.1.2.3

```

## Partie 2 : Saisie d'un masque de sous-réseau

Définissez une fonction pour saisir un masque réseau en notation décimale pointée. L'utilisateur saisit un masque de sous-réseau sous la forme nnn.nnn.nnn.nnn. La fonction retourne le masque de sous-réseau sous la forme d'un entier 32 bits.

### Validation des données saisies :
- Un masque de sous-réseau valide est une séquence de quatre nombres entiers compris entre 0 et 255, séparés par des points.
- Assurez-vous que le masque de sous-réseau est valide, c'est-à-dire qu'il est composé d'une séquence de bits à 1 suivie d'une séquence de bits à 0.

#### Exemples à tester :
```
$ make partie2
gcc -o partie2 partie2.c

$ ./partie2
Saisir un masque de sous-réseau: 255.255.255.0
masque sous-réseau (32 bits): 4294967040

$ ./partie2
Saisir un masque de sous-réseau: 255.255.hello.world
Erreur saisie incorrecte

$ ./partie2
Saisir un masque de sous-réseau: 255.255.0.0
masque sous-réseau (32 bits): 4294901760

$ ./partie2
Saisir un masque de sous-réseau: 255.255.255.138
Erreur masque incorrect

$ ./partie2
Saisir un masque de sous-réseau: 255.255.255.128
masque sous-réseau (32 bits): 4294967168

$ ./partie2
Saisir un masque de sous-réseau: 255.255.255.192
masque sous-réseau (32 bits): 4294967232

$ ./partie2
Saisir un masque de sous-réseau: 255.255.255.255
masque sous-réseau (32 bits): 4294967295

$ ./partie2
Saisir un masque de sous-réseau: 0.0.0.0
masque sous-réseau (32 bits): 0

```

### Partie 3 : Calcul de l'adresse de réseau

Écrire une fonction pour calculer l'adresse de réseau à partir de l'adresse IP et du masque de sous-réseau. Pour calculer l'adresse de réseau, effectuez un ET logique bit à bit entre l'adresse IP et le masque de sous-réseau.

#### Exemples à tester :

```
$ make partie3
gcc -o partie3 partie3.c commun.c

$ ./partie3
Saisir une adresse IP: 192.168.3.1
Saisir un masque de sous-réseau: 255.255.255.0
Adresse réseau: 192.168.3.0

$ ./partie3
Saisir une adresse IP: 10.0.1.2
Saisir un masque de sous-réseau: 255.0.0.0
Adresse réseau: 10.0.0.0

$ ./partie3
Saisir une adresse IP: 192.168.3.96
Saisir un masque de sous-réseau: 255.255.255.192
Adresse réseau: 192.168.3.64

```

### Partie 4 : Calcul de l'adresse de broadcast

Définissez une fonction pour calculer l'adresse de broadcast à partir de l'adresse de réseau et du masque de sous-réseau.

Pour calculer l'adresse de broadcast, effectuez un OU logique bit à bit entre l'adresse de réseau et le complément du masque de sous-réseau.

#### Exemples à tester :

```
$ make partie4
gcc -o partie4 partie4.c commun.c

$ ./partie4
Saisir une adresse IP: 192.168.3.2
Saisir un masque de sous-réseau: 255.255.255.0
Adresse broadcast: 192.168.3.255

$ ./partie4
Saisir une adresse IP: 10.0.25.3
Saisir un masque de sous-réseau: 255.0.0.0
Adresse broadcast: 10.255.255.255

$ ./partie4
Saisir une adresse IP: 192.168.3.96
Saisir un masque de sous-réseau: 255.255.255.192
Adresse broadcast: 192.168.3.127
```

### Partie 5 : Calcul de la notation CIDR

Écrivez une fonction pour calculer la notation CIDR du réseau à partir du masque de sous-réseau.

Pour calculer la notation CIDR, comptez le nombre de bits mis à 1 dans le masque de sous-réseau.

#### Exemples à tester :
```
$ make partie5
gcc -o partie5 partie5.c commun.c

$ ./partie5
Saisir un masque de sous-réseau: 255.0.0.0
CIDR: /8

$ ./partie5
Saisir un masque de sous-réseau: 255.255.255.0
CIDR: /24

$ ./partie5
Saisir un masque de sous-réseau: 0.0.0.0
CIDR: /0

$ ./partie5
Saisir un masque de sous-réseau: 255.255.255.255
CIDR: /32

```

### Partie 6 : Intégration et affichage des résultats

Intégrez toutes les fonctions précédentes dans la fonction principale (`main`) pour calculer et afficher les résultats.

Assurez-vous d'afficher les résultats de manière claire et compréhensible pour l'utilisateur.

#### Exemples à tester :

Testez le programme complet avec différents exemples d'adresses IP et de masques de sous-réseau pour vérifier son bon fonctionnement.

```
$ make partie6
gcc -o partie6 partie6.c commun.c

$ ./partie6
Saisir une adresse IP: 192.168.3.2
Saisir un masque de sous-réseau: 255.255.255.0
Adresse réseau: 192.168.3.0 / 24
Adresse broadcast: 192.168.3.255

$ ./partie6
Saisir une adresse IP: 192.168.2.96
Saisir un masque de sous-réseau: 255.255.255.192 
Adresse réseau: 192.168.2.64 / 26
Adresse broadcast: 192.168.2.127
```
