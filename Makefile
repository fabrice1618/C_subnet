all: partie1 partie2 partie3 partie4 partie5 partie6


partie1: partie1.c commun.c commun.h
	gcc -o partie1 partie1.c commun.c

partie2: partie2.c commun.c commun.h
	gcc -o partie2 partie2.c commun.c

partie3: partie3.c commun.c commun.h
	gcc -o partie3 partie3.c commun.c

partie4: partie4.c commun.c commun.h
	gcc -o partie4 partie4.c commun.c

partie5: partie5.c commun.c commun.h
	gcc -o partie5 partie5.c commun.c

partie6: partie6.c commun.c commun.h
	gcc -o partie6 partie6.c commun.c

clean:
	rm -f partie1 partie2 partie3 partie4 partie5 partie6