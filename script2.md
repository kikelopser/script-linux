## Funcionalidad



## Codigo
```
#!/bin/bash
# Parametros
opcion=$1
usuario=$2
# Funciones
ComprobarUsuario () {
    usuario=$1
    respuesta1=$(getent passwd | grep -w "$usuario")
    respuesta2=$(who | grep -w "$usuario")
    if [ -n "$respuesta1" ] && [ -z "$respuesta2" ]
    then
        echo "El usuario $usuario existe y no está conectado"
        sleep 1
        return 0
    else
        echo "El usuario $usuario no existe o no está conectado"
        sleep 1
        return 1
    fi
}
CopiaUsuario () {
    echo "Copia de Usuario"
    ComprobarUsuario "$usuario"
    resultado=$?
    if [ "$resultado" -eq 0 ]
    then
        tar -zcvf /root/datos/"$usuario"-"$FECHA".tar.gz /home/"$usuario" 2>/dev/null 1>.basura.tmp
        ls -t /root/datos/$usuario* | nl
    else
        echo "No podemos realizar la copia"
    fi
}
RestaurarCopia () {
    echo "Restaurar Copia de Usuario"
    ComprobarUsuario "$usuario"
    resultado=$?
    if [ "$resultado" -eq 0 ]
    then
        copia=$(ls -t /root/datos/$usuario* | nl | grep -w "1" | cut -f2)
        echo "Se va a proceder a restaurar la copia $copia"
        read -p "Pulse intro para comenzar" intro
        tar -zxvf "$copia" -C /
    else
        echo "No se ha podido restaurar la copia"
    fi
}
# Bloque principal
case $opcion in
    c) CopiaUsuario;;
    r) RestaurarCopia;;
    *) echo "Opción no valida";;
esac
echo "Hemos terminado"
```
