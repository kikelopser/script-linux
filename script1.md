## Funcionalidad
El comando clear (primera línea), limpia la pantalla.
El comando “echo” muestra lo que escribamos a continuación entre comillas dobles. Las líneas dos a la ocho dan lugar a un menú, que sirve para escoger el escritorio que queramos lanzar. Para ello, el usuario tiene que escribir un número, entre 1 y 4.
A continuación, vemos el comando “read”. Este, lee la respuesta del usuario, y la guarda como la variable: entrada1.
La estructura “case”. Empieza por case “$variable” in. Luego, en la siguiente linea:
1) Es para referirse al valor: 1, que en este caso es “Reiniciar red”. El resto son las entradas para los demás menús. Cada una de ellas termina obligatoriamente con los caracteres: ;;

Finalmente, para cerrar la estructura se escribe: esac, que no es otra cosa sino case, escrito al revés.

## Codigo

```
#!/bin/bash
# Author: Enrique López Serrano
# Version: 1.0
# Description: Bienvenidos a los scripts
clear
echo "Bienvenidos a GnuTrivial."
sleep 2
echo "Soy el típico juego de preguntas y respuestas."
sleep 2
echo "Si aciertas todas las preguntas, te concederé el título de magister del universo."
echo "¿Cómo se llamaba el último emperador Romano de occidente, Claudio, Teodosio o Rómulo."
read respuesta1
if test $respuesta1 = Rómulo
then
echo "Respuesta correcta."
else
echo "Lo siento, la respuesta correcta es: Rómulo."
fi
sleep 2
echo "Pasemos a la siguiente pregunta. ¿Qué célebre filósofo Griego tuvo por discípulo a Alejandro Magno, Platón, Aristóteles o Zenón?"
read respuesta2
if test $respuesta2 = Aristóteles
then
echo "respuesta correcta."
else
echo "Lo siento, la respuesta correcta es: Aristóteles."
fi
if test $respuesta1 = Rómulo && test $respuesta2 = Aristóteles
then
echo "Eres un pequeño magister del universo."
else
then
echo "NO eres un pequeño magister del universo."
fi
```
