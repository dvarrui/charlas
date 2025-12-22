
# TEUTON: Caso de uso con base de datos

Tutorial donde vamos mostrando paso a paso, las acciones y decisiones que vamos tomando para crear desde cero un test de Teuton para un caso concreto de bases de datos.

## 1. Preparativos

Vamos a preparar nuestra práctica. Podemos empezar creando una MV y haciendo la práctica primero
nosotros mismos para asegurarnos de que lo tenemos todo bajo control.

Si ya lo tenemos controlado... podemos saltar en siguiente punto.

> Enlace de interés:
> * Tutorial Sqlite: https://www.tutorialspoint.com/sqlite/sqlite_commands.htm

### 1.1 Preparamos el software

1. Necesitamos una MV para simular la máquina del alumno (S-node). Creamos la MV llamada `snode1` usando [vagrant/snode.1/Vagrantfile](vagrant/snode.1/Vagrantfile).
2. Necesitamos una base de datos. Aunque puede ser cualquiera por motivos didácticos elegiremos Sqlite.
    + Entramos a la MV del alumno "virtual".
    * Instalar sqlite3: `zypper in sqlite` (lo estoy haciendo desde un SO OpenSUSE).
    * Comprobamos `sqlite3 -version`.

### 1.2 Enunciado

Se supone que el resto de los preparativos (contenido de la BBDD y consultas SQL) irán en función de la práctica que queremos poner en clase. Me voy a inventar el siguiente enunciado:

```
=============
PRACTICA BBDD
=============

1. Crea una base de datos Sqlite con el nombre "$HOME/alumnoXX.db". Donde XX es el número asignado a cada alumno.
2. Crea la tabla "Persons" con los campos "name" texto y "age" numérico.
3. Carga los siguente datos en la tabla Persons.
Obiwan   56
Princesa 10
Luke     10
Yoda     980
4. Crea el fichero "$HOME/tarea/01.sql" con una consulta SQL para mostrar el número de personas mayores de edad.
5. Crea el fichero "$HOME/tarea/02.sql" con una consulta SQL para mostrar sólo los nombres de todas las personas ordenado alfabéticamente.
```

### 1.3 Preparamos la BBDD, tablas y contenido

_(Estamos en la máquina del alumno, donde tiene el servicio SSH instalado)_

En función del enunciado anterior hacemos lo siguiente:

1. Dentro de la MV `snode1`, creamos la base de datos:
```bash
$ sqlite3
sqlite3> .databases
main: /home/alumno r/w
```
2. Crear tabla: `create table Persons (name varchar(255), age int);`
3. Llenar con datos
```
insert into Persons (name, age) values ( "Obiwan", 56);
insert into Persons (name, age) values ( "Princesa", 10);
insert into Persons (name, age) values ( "Luke", 10);
insert into Persons (name, age) values ( "Yoda", 980);
```
4. Comprobamos:
```
select * from Persons
select name from Persons order by name;
```

> Se supone que se ha creado un fichero `alumno01.db` que es la base de datos del alumno dentro de la MV `snode1`.
```
/tarea> file alumno01.db 
alumno01.db: SQLite 3.x database, last written using SQLite version 3036000
```

### 1.4 Preparamos las consultas SQL

_(Estamos en la máquina del alumno, donde tiene el servicio SSH instalado)_

Vamos a crear 2 sentencias SQL como si fuera la respuesta del alumno a una petición del profesor:

> Enlaces de interés:
> *https://database.guide/5-ways-to-run-sql-script-from-file-sqlite/

**Fichero 1:** Contar todas las personas mayores de edad.
* File Path: `/home/alumno/tarea/01.sql`
* Contenido: `select count(name) from persons where age >= 18;`
* Resultado al ejecutarlo en la base de datos:
```
$ sqlite3 tarea/alumno01 ".read tarea/01.sql"
2
```

**Fichero 2**:
* File Path: `/home/alumno/tarea/02.sql`
* Contenido: `select name from Persons order by name;`
* Resultado al ejecutarlo en la base de datos:
```
$ sqlite3 tarea/alumno01 ".read tarea/02.sql"

Luke
Obiwan
Princesa
Yoda
```

## 2. Crear el Test de Teuton

Ya tenemos el enunciado resuelto en nuestra MV del alumno "virtual". Ahora vamos a crear un test de teuton para evaluar la práctica.

_(Estamos en la máquina del profesor, donde tiene teuton instalado)_

1. `teuton new ejemplo.3`, creamos "esqueleto" para un nuevo test.
1. En en fichero [ejemplo.3/start.rb](ejemplo.3/start.rb) definimos los objetivos de la práctica.
1. En el fichero [ejemplo.3/config.yaml](ejemplo.3/config.yaml) configuramos los parámetros (acceso a las máquinas, etc.) de cada alumno (case).
1. `teuton ejemplo.3`, para ejecutar el test.

Ver resultados en `var`.

## 3. Crear enunciado

Podríamos usar el comando teuton para crear un enunciado a partir de la propia tarea (Test de teuton).
* `teuton readme ejemplo.3 > ejemplo.3/README.md`

Ver fichero [ejemplo.3/README.md](ejemplo.3/README.md)
