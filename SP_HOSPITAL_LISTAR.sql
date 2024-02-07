create or replace procedure SP_HOSPITAL_LISTAR(p_idhospital in hospital.idhospital%TYPE, p_mensaje OUT VARCHAR2)
is



cursor hospitales is
select h.idhospital, h.nombre, g.descgerente
from hospital h
join gerente g on h.idgerente = g.idgerente 
WHERE h.idhospital = p_idhospital
order by h.nombre;

begin

    for reg in hospitales loop

    p_mensaje:=('codigo: '||reg.idhospital||' Nombre: '||reg.nombre||' Gerente: '||reg.descgerente);

    end loop;
    

EXCEPTION
WHEN NO_DATA_FOUND THEN

p_mensaje:=('El hospital buscado no existe!!!');    


end;