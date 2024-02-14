create or replace procedure SP_HOSPITAL_ACTUALIZAR (p_idhospital in hospital.idhospital%type,p_distrito in hospital.iddistrito%type,
    p_sede in hospital.idsede%type,p_idgerente in gerente.idgerente%TYPE, p_nombre_gerente in gerente.descgerente%type, p_condicion condicion.idcondicion%TYPE, p_mensaje OUT VARCHAR2)
IS

v_idgerente gerente.idgerente%type;
v_actualizar hospital.idhospital%type;
v_busca_gerente NUMBER; 
v_nombregerente gerente.descgerente%TYPE;

begin

--Asigno los valores enviados por los parametros a las variables
--para realizar las busquedas en los select

v_actualizar := p_idhospital;
v_busca_gerente := p_idgerente;

--obtengo los valores de gerente de acuerdo al parametro ingresado

select idgerente,descgerente
into v_idgerente,v_nombregerente
from gerente
where idgerente = v_busca_gerente;

--verifico que el nombre del gerente se encuentre o no en la
--tabla gerente

IF v_nombregerente is not null THEN
    dbms_output.put_line('gerente encontrado '||v_nombregerente||' se agregara al hospital');
end if;

--Actualizo la tabla hospital con los parametros enviados
        
UPDATE hospital SET idDistrito = p_distrito, idSede = p_sede, idGerente = v_idgerente,
    idcondicion = p_condicion
WHERE idhospital = v_actualizar;


p_mensaje := 'Hospital Actualizado correctamente ';

--Agrego una excepcion en el caso que el gerente no sea encontrado
--y agrego al nuevo gerenta en la tabla gerente y reporto que fue agregado

EXCEPTION
WHEN NO_DATA_FOUND THEN

insert into gerente(idGerente, descGerente, fechaRegistro) 
        values(v_busca_gerente, p_nombre_gerente, sysdate);
        
        select g.idgerente,g.descgerente
        into v_idgerente,v_nombregerente
        from gerente g
        WHERE g.idgerente = v_busca_gerente;
        
UPDATE hospital SET idDistrito = p_distrito, idSede = p_sede, idGerente = v_idgerente,
    idcondicion = p_condicion
WHERE idhospital = v_actualizar;

dbms_output.put_line('Se agrego al gerente: '||v_nombregerente||' y se actualizo el hospital');

end;