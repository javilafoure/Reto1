create or replace procedure SP_HOSPITAL_REGISTRAR (p_idhospital in hospital.idhospital%type, p_nombre_hospital in hospital.nombre%type, p_antiguedad in hospital.antiguedad%type, p_area in hospital.area%type,
     p_distrito in hospital.iddistrito%type, p_sede in hospital.idsede%type,p_idgerente in gerente.idgerente%type,p_condicion condicion.idcondicion%TYPE, p_mensaje OUT VARCHAR2)
IS

v_idhospital number;

begin

select idhospital
into v_idhospital
from hospital
WHERE idhospital = p_idhospital;

if v_idhospital = p_idhospital then

p_mensaje := 'Hospital ya existe';

end if;

EXCEPTION
WHEN NO_DATA_FOUND THEN

insert into hospital(idHospital, nombre, antiguedad, area, fechaRegistro, idDistrito, idSede, idGerente, idCondicion) 
        values(p_idhospital, p_nombre_hospital, p_antiguedad, p_area, sysdate, p_distrito, p_sede, p_idgerente, p_condicion);
        
p_mensaje := 'Hospital agregado correctamente';

end;