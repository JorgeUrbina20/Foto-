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



