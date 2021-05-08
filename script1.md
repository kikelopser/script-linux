## Funcionalidad
El comando clear (primera línea), limpia la pantalla.
El comando “echo” muestra lo que escribamos a continuación entre comillas dobles. Las líneas dos a la ocho dan lugar a un menú, que sirve para escoger el escritorio que queramos lanzar. Para ello, el usuario tiene que escribir un número, entre 1 y 4.
A continuación, vemos el comando “read”. Este, lee la respuesta del usuario, y la guarda como la variable: entrada1.
La estructura “case”. Empieza por case “$variable” in. Luego, en la siguiente linea:
1) Es para referirse al valor: 1, que en este caso es “Reiniciar red”. El resto son las entradas para los demás menús. Cada una de ellas termina obligatoriamente con los caracteres: ;;

Finalmente, para cerrar la estructura se escribe: esac, que no es otra cosa sino case, escrito al revés.

## Prueba del script

![image](https://user-images.githubusercontent.com/58082614/116122365-f983de80-a6c1-11eb-8c30-4b2db24750d2.png)

## Codigo

```
#!/bin/bash
# Author: Enrique López Serrano
# Version: 1.0
# Description: Bienvenidos a los scripts
clear
echo "--------------------------------"
echo "              MENU              "
echo "--------------------------------"
echo "1. Reiniciar la interfaz de red."
echo "2. Apagar equipo."
echo "3. Reiniciar equipo."
echo "4. Mostrar puertos abiertos."
echo "5. Salir."
read opcion
case $opcion in
1)
/etc/init.d/networking restart
;;
2)
shutdown -h now
;;
3)
reboot
;;
4)
nmap localhost
;;
5)
exit
;;
*)
echo Opción no válida
sleep2
. ScriptMultiusos.sh
;;
esac
```
