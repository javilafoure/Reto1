create or replace procedure SP_HOSPITAL_LISTAR(p_idhospital in hospital.idhospital%TYPE, p_lista in out SYS_REFCURSOR)
is



cursor hospitales is
select h.idhospital, h.nombre, g.descgerente
from hospital h
join gerente g on h.idgerente = g.idgerente 
WHERE h.idhospital like p_idhospital||'%'
order by h.nombre;

begin
OPEN p_lista FOR select h.idhospital, h.nombre, g.descgerente
from hospital h
join gerente g on h.idgerente = g.idgerente 
WHERE h.idhospital like p_idhospital||'%'
order by h.nombre;

/*    for reg in hospitales loop

    dbms_output.put_line('codigo: '||reg.idhospital||' Nombre: '||reg.nombre||' Gerente: '||reg.descgerente);

    end loop;*/

end;