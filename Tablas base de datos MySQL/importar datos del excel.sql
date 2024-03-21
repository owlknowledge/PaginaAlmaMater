/* INSERT INTO areas (nombre_area) VALUES ('Cirugía'); */
select * from areas;
DELETE FROM areas WHERE id = 1;
select * from equipo;

select * from equipo;
SELECT COUNT(*) FROM equipo;

select * from equipo where nombre = 'bomba de infusion';
select * from equipo where nombre like 'bomba %';
select * from equipo where nombre like '%de%';

select * from invima
where id in (select id from equipo);


select id from equipo