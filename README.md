# GestionDB_Mysql_PostgreSQL

*Material de las prácticas y proyectos acerca de Gestión de Base de Datos*


</br>

#### Diagrama Entidad Relación Mysql `db_indumentaria`

![Index app](https://github.com/andresWeitzel/GestionDB_Mysql_PostgreSQL/blob/master/db_indumentaria/db_indumentaria_DER.png)



</br>

<hr>

## Unirse como colaborador al proyecto

##### 1)Generamos un fork del proyecto Original..
* https://github.com/andresWeitzel/GestionDB_Mysql_PostgreSQL

##### 2)Descargas o clonas tu fork
* git clone "Link de tu Repositorio sin comillas"

##### 3)Inicializamos nuestro repositorio local .git
* git init

 `Tu Repositorio Remoto tiene un commit que tu local no tiene, y viceversa. No hay un ancestro común y por lo tanto no se puede hacer merge.Si el código del remoto es ligeramente parecido a tu código local y efectivamente quieres hacer un merge, la solución sería:... `

##### 4)Descargamos todas las referencias y objetos de nuestro fork
* git fetch --all

##### 5)No tocamos el archivo de índice o el árbol de trabajo en absoluto (pero restablecemos la cabeza a , al igual que todos los modos). Esto deja todos los archivos modificados "Cambios a confirmar", como diría.
* git reset --soft origin/master

##### 6)Agregamos lo desarrollado a nuestro repo local
* git add --all

##### 7)Agregamos lo que tenemos en nuestro repo local al área de Trabajo.(Comit encima del primer commit remoto)
* git commit -m "agrega un comentario entre comillas"

##### 8)Le indicamos a git donde se va a almacenar nuestro proyecto(fijate en tu repositorio de github cual es el enlace de tu proyecto(esta en code)).
* git remote add origin "Link de tu Repositorio sin comillas"

##### 9)Subimos nuestro proyecto.
* git push origin master


#####  `Si se quiere realizar una restructuracion del proyecto desde tu FORK y pisar todo lo que hay...`
* git push -f --set-upstream origin master
* (OJO, CON ESTO SE PIERDE TODO LO QUE HABIA)

</br>


### Actualización del repositorio del fork de cada desarrollador con git desde el bash 

##### 1)Visualizamos las modificaciones realizadas en local
* git status

##### 2)Agregamos lo modificado al area de trabajo
* git add *

##### 3)Confirmamos las modificaciones realizadas
* git commit -m "tu commit entre comillas"

##### 5)Enviamos todos los cambios al repo en github
* git push "Link de tu Repositorio sin comillas"

</br>

</br>
