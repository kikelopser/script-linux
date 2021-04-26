## CODIGO

```
# !/bin/bash
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
