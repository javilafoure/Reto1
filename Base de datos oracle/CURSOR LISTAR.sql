DECLARE
cursor hospitales is
select h.idhospital, h.nombre
from hospital h
WHERE h.idhospital like '12%'
order by h.nombre;

begin

    for reg in hospitales loop

    dbms_output.put_line('codigo: '||reg.idhospital||' Nombre: '||reg.nombre);

    end loop;

end;