create or replace procedure SP_HOSPITAL_ELIMINAR (p_idhospital in hospital.idhospital%TYPE, p_mensaje OUT VARCHAR2)
IS

v_idhospital hospital.idhospital%TYPE;
v_borrar hospital.idhospital%TYPE;

BEGIN

v_borrar := p_idhospital;

SELECT h.idhospital
INTO v_idhospital
FROM hospital h
WHERE h.idhospital = v_borrar;


DELETE FROM hospital WHERE idhospital = v_borrar;

p_mensaje := 'Hospital eliminado correctamente';


EXCEPTION
WHEN NO_DATA_FOUND THEN

dbms_output.put_line('El hospital buscado no existe!!!');

end;