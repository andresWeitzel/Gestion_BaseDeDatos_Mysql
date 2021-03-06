# Gestión_BaseDeDatos_Mysql

* En Este Proyecto se pone en práctica el Modelado, Diseño y Gestión desde Cero de una db específicamente de Indumentaria con el SGBD Mysql.
* La Normalización de la misma consta de tablas de artículos independientes (detalles) ,según el tipo, junto con los detalles de facturas de Clientes.
* En el Diseño de esta se incluyen las respectivas CONSTRAINTS (FK, UNIQUE Y CHECK), PK y los Enumerados Respectivos a modo de Restricción y posibles validaciones futuras.
* Se desarrollan las respectivas Consultas(Queries) dentro del Diseño, para Testing y  para la Posterior Gestión.
* Para la Gestión de la db se implementan los Procedimientos Almacenados, los Triggers, Indices, Vistas y Catalogos.
* Se lleva a cabo un Sistema de Logs de Usuario en el cúal está directamente relacionado con los puntos anteriores y a su vez el manejo de Inserciones, Actualizaciones 
o Eliminación de Registros.


</br>

#### Diagrama Entidad Relación  `db_indumentaria`

![Index app](https://github.com/andresWeitzel/Gestion_BaseDeDatos_Mysql/blob/master/documentation/db_indumentaria_DER.png)

</br>

</br>

#### Vista General de Tablas

![Index app](https://github.com/andresWeitzel/Gestion_BaseDeDatos_Mysql/blob/master/documentation/01_tablas.png)

</br>

#### Vista General de una de las Tablas

![Index app](https://github.com/andresWeitzel/Gestion_BaseDeDatos_Mysql/blob/master/documentation/02_tablaArticulos.png)

</br>

#### Vista General de Vistas / VIEWS

![Index app](https://github.com/andresWeitzel/Gestion_BaseDeDatos_Mysql/blob/master/documentation/03_vistas.png)

</br>


#### Vista General de Procedimientos Almacenados / STORED PROCEDURES

![Index app](https://github.com/andresWeitzel/Gestion_BaseDeDatos_Mysql/blob/master/documentation/04_Procedimientos.png)

</br>


#### Vista General de Disparadores / TRIGGERS

![Index app](https://github.com/andresWeitzel/Gestion_BaseDeDatos_Mysql/blob/master/documentation/05_triggers.png)

</br>


#### Vista General de Registros de Usuario (Actualizaciones) / LOGS UPDATE

![Index app](https://github.com/andresWeitzel/Gestion_BaseDeDatos_Mysql/blob/master/documentation/06_logsUpdate.png)

</br>


#### Vista General de Registros de Usuario (Inserciones) / LOGS INSERT

![Index app](https://github.com/andresWeitzel/Gestion_BaseDeDatos_Mysql/blob/master/documentation/07_logsInsert.png)

</br>




<hr>

## Más Información

</br>


| **Tecnologías Empleadas** | **Versión** | **Finalidad** |               
| ------------- | ------------- | ------------- |
| Git Bash | 2.29.1.windows.1  | Control de Versiones |
| XAMPP | 3.2.2  | Paquete de Servidores |
| DBeaver | 21.1  | Diseño de Base de Datos | 

</br>


## Descarga y documentacion de las Tecnologías empleadas:
#### Git:                              https://git-scm.com/docs
#### XAMPP:                            https://www.apachefriends.org/download.html
#### DBeaver:                         https://dbeaver.io/


</br>


## Orden de Ejecución de los Scripts para la creación de la Base de Datos

#### 1)db_indumentaria_DDL.sql

#### 2)db_indumentaria_DML.sql

#### 3)db_indumentaria_QUERIES_SELECT.sql (OPCIONAL)

#### 4)db_indumentaria_QUERIES_INSERT.sql

#### 5)db_indumentaria_QUERIES_UPDATE.sql

#### 6)db_indumentaria_INDEXES.sql

#### 7)db_indumentaria_VIEWS.sql

#### 8)db_indumentaria_PROCEDURES_INSERT.sql

#### 9)db_indumentaria_PROCEDURES_UPDATE.sql

#### 10)db_indumentaria_PROCEDURES_DELETE.sql

#### 11)db_indumentaria_CATALOGS.sql (OPCIONAL)

#### 12)db_indumentaria_TRIGGERS_INSERT.sql

#### 13)db_indumentaria_TRIGGERS_UPDATE.sql

#### 14)db_indumentaria_TRIGGERS_DELETE.sql

</br>

## Subir el proyecto al repositorio desde bash 

#### 1)Creamos un nuevo repositorio en GitHub.

#### 2)Inicializamos nuestro repositorio local .git desde git bash.
* git init

#### 3)Agregamos lo desarrollado a nuestro repo local desde la terminal.
* git add *

#### 4)Agregamos lo que tenemos en nuestro repo local al área de Trabajo desde la terminal.
* git commit -m "agrega un comentario entre comillas"

#### 5)Le indicamos a git donde se va a almacenar nuestro proyecto(fijate en tu repositorio de github cual es el enlace de tu proyecto(esta en code)).
* git remote add origin https://github.com/andresWeitzel/GestionDB_Mysql_PostgreSQL

#### 6)Subimos nuestro proyecto.
* git push -u origin master


</br>


## Actualización de el proyecto al repositorio con git bash.

#### 1)Visualizamos las modificaciones realizadas en local
* git status

#### 2)Agregamos lo modificado al area de trabajo
* git add *

#### 3)Confirmamos las modificaciones realizadas
* git commit -m "tu commit entre comillas"

#### 4)Sincronizamos y traemos todos los cambios del repositorio remoto a la rama en la que estemos trabajando actualmente.
##### (SOLO SI SE REALIZARON CAMBIOS DESDE OTRA LADO, ej: en github u/o/y un equipo de trabajo)
* git pull https://github.com/andresWeitzel/GestionDB_Mysql_PostgreSQL

#### 5)Enviamos todos los cambios locales al repo en github
* git push https://github.com/andresWeitzel/GestionDB_Mysql_PostgreSQL

</br>


