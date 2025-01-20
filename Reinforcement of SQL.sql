/*Este es un archivo de SQL Server para prácticar todos los conocimientos adquiridos
en este lenguaje de programación como un lenguaje de consulta estructurado.*/

-->BDD
create database pruebaF
use PruebaFinal
alter database pruebaF modify name="PruebaFinal";
use master
drop database "PruebaFinal"

-->Tablas
create table person(
id int,
nombre nvarchar(50) not null
);

execute sp_rename 'persona', 'person';

drop table person

insert into person  values(1,'Jose'),(2,'Pedro');

select id,nombre from person;

-->Columnas
alter table person add age int;
select * from person;

alter table person drop column sex;

exec sp_rename 'person.nombre','name';
update person set age=22;

-->Filas
delete from person where id=2;
truncate table person;

-->Operadores (Aritméticos, Relación, Lógicos).
-->Funciones (Matematicas,HoraFecha,String).
-->Inner Join
-->Group by / having
-->operador like
use prueba

insert into productos values ('Agua',3),('Camisas',7),('Pailas',10);

select * from productos

select distinct Nombre from productos

select count (precio) as cantidad, Nombre from productos group by Nombre
having COUNT (precio)<5;

select * from productos where Nombre like'a%';

--Vistas
--Esquemas
--Procedimientos almacenados
-->Estructura de selección
-->Transacciones
-->Manejo de errores
--Trigger

--To practice all what i´ve seen.
use pruebaFinal

create table dep(
id int primary key not null,
nombreDep nvarchar(50) not null,
states bit default 1 -->It means that the number one is "active" and the number zero is "innactive"
);
create table mun(
id int primary key not null,
nombreMun nvarchar(50) not null,
idDep int foreign key references dep(id)
);
create table neigh(
id int primary key not null,
nombreNei nvarchar(50) not null,
idMun int foreign key references mun(id)
);--This is the neighbordhood

create table employee (
id int primary key,
fullName nvarchar(130),
sex char(1),
dni char(16) check (dni like ('[0-9][0-9][0-9]-[0-9][0-9][0-9][0-9][0-9][0-9]-[0-9][0-9][0-9][0-9][A-Z]')),
salary float not null
);

create table 
--Repasar los constrainst 




