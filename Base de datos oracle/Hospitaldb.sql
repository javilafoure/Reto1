--------------------------------------------------------
-- Archivo creado  - miércoles-febrero-07-2024   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table CONDICION
--------------------------------------------------------

  CREATE TABLE "HOSPITALDB"."CONDICION" 
   (	"IDCONDICION" NUMBER(10,0), 
	"DESCCONDICION" VARCHAR2(50 BYTE), 
	"FECHAREGISTRO" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table DISTRITO
--------------------------------------------------------

  CREATE TABLE "HOSPITALDB"."DISTRITO" 
   (	"IDDISTRITO" NUMBER(10,0), 
	"IDPROVINCIA" NUMBER(10,0), 
	"DESCDISTRITO" VARCHAR2(50 BYTE), 
	"FECHAREGISTRO" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table GERENTE
--------------------------------------------------------

  CREATE TABLE "HOSPITALDB"."GERENTE" 
   (	"IDGERENTE" NUMBER(10,0), 
	"DESCGERENTE" VARCHAR2(50 BYTE), 
	"FECHAREGISTRO" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table HOSPITAL
--------------------------------------------------------

  CREATE TABLE "HOSPITALDB"."HOSPITAL" 
   (	"IDHOSPITAL" NUMBER(10,0), 
	"NOMBRE" VARCHAR2(50 BYTE), 
	"ANTIGUEDAD" NUMBER(10,0), 
	"AREA" NUMBER(7,2), 
	"FECHAREGISTRO" DATE, 
	"IDDISTRITO" NUMBER(10,0), 
	"IDSEDE" NUMBER(10,0), 
	"IDGERENTE" NUMBER(10,0), 
	"IDCONDICION" NUMBER(10,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PROVINCIA
--------------------------------------------------------

  CREATE TABLE "HOSPITALDB"."PROVINCIA" 
   (	"IDPROVINCIA" NUMBER(10,0), 
	"DESCPROVINCIA" VARCHAR2(50 BYTE), 
	"FECHAREGISTRO" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table SEDE
--------------------------------------------------------

  CREATE TABLE "HOSPITALDB"."SEDE" 
   (	"IDSEDE" NUMBER(10,0), 
	"DESCSEDE" VARCHAR2(50 BYTE), 
	"FECHAREGISTRO" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into HOSPITALDB.CONDICION
SET DEFINE OFF;
Insert into HOSPITALDB.CONDICION (IDCONDICION,DESCCONDICION,FECHAREGISTRO) values ('1','CLAUSURADO',to_date('19/09/23','DD/MM/RR'));
Insert into HOSPITALDB.CONDICION (IDCONDICION,DESCCONDICION,FECHAREGISTRO) values ('2','ACTIVO',to_date('11/07/21','DD/MM/RR'));
Insert into HOSPITALDB.CONDICION (IDCONDICION,DESCCONDICION,FECHAREGISTRO) values ('3','INHABILITADO',to_date('08/08/22','DD/MM/RR'));
REM INSERTING into HOSPITALDB.DISTRITO
SET DEFINE OFF;
Insert into HOSPITALDB.DISTRITO (IDDISTRITO,IDPROVINCIA,DESCDISTRITO,FECHAREGISTRO) values ('1','1','La Victoria',to_date('16/09/23','DD/MM/RR'));
Insert into HOSPITALDB.DISTRITO (IDDISTRITO,IDPROVINCIA,DESCDISTRITO,FECHAREGISTRO) values ('2','1','Pimentel',to_date('16/09/23','DD/MM/RR'));
Insert into HOSPITALDB.DISTRITO (IDDISTRITO,IDPROVINCIA,DESCDISTRITO,FECHAREGISTRO) values ('3','1','José Leonardo O.',to_date('16/09/23','DD/MM/RR'));
Insert into HOSPITALDB.DISTRITO (IDDISTRITO,IDPROVINCIA,DESCDISTRITO,FECHAREGISTRO) values ('4','2','Trujillo',to_date('16/09/23','DD/MM/RR'));
Insert into HOSPITALDB.DISTRITO (IDDISTRITO,IDPROVINCIA,DESCDISTRITO,FECHAREGISTRO) values ('5','2','Laredo',to_date('16/09/23','DD/MM/RR'));
Insert into HOSPITALDB.DISTRITO (IDDISTRITO,IDPROVINCIA,DESCDISTRITO,FECHAREGISTRO) values ('6','2','Moche',to_date('16/09/23','DD/MM/RR'));
Insert into HOSPITALDB.DISTRITO (IDDISTRITO,IDPROVINCIA,DESCDISTRITO,FECHAREGISTRO) values ('7','3','Lagunas',to_date('15/09/23','DD/MM/RR'));
Insert into HOSPITALDB.DISTRITO (IDDISTRITO,IDPROVINCIA,DESCDISTRITO,FECHAREGISTRO) values ('8','3','Monsefu',to_date('15/09/23','DD/MM/RR'));
Insert into HOSPITALDB.DISTRITO (IDDISTRITO,IDPROVINCIA,DESCDISTRITO,FECHAREGISTRO) values ('9','3','Eten',to_date('15/09/23','DD/MM/RR'));
REM INSERTING into HOSPITALDB.GERENTE
SET DEFINE OFF;
Insert into HOSPITALDB.GERENTE (IDGERENTE,DESCGERENTE,FECHAREGISTRO) values ('9','Luis Rios',to_date('07/02/24','DD/MM/RR'));
Insert into HOSPITALDB.GERENTE (IDGERENTE,DESCGERENTE,FECHAREGISTRO) values ('10','Luis Rios',to_date('07/02/24','DD/MM/RR'));
Insert into HOSPITALDB.GERENTE (IDGERENTE,DESCGERENTE,FECHAREGISTRO) values ('1','Constantino Jorge',to_date('02/11/23','DD/MM/RR'));
Insert into HOSPITALDB.GERENTE (IDGERENTE,DESCGERENTE,FECHAREGISTRO) values ('2','Unai Escobar',to_date('24/05/21','DD/MM/RR'));
Insert into HOSPITALDB.GERENTE (IDGERENTE,DESCGERENTE,FECHAREGISTRO) values ('3','Aurelio Valles',to_date('15/08/23','DD/MM/RR'));
Insert into HOSPITALDB.GERENTE (IDGERENTE,DESCGERENTE,FECHAREGISTRO) values ('4','Alexander Juarez',to_date('21/10/22','DD/MM/RR'));
Insert into HOSPITALDB.GERENTE (IDGERENTE,DESCGERENTE,FECHAREGISTRO) values ('5','Cayetano Gimenez',to_date('25/01/21','DD/MM/RR'));
Insert into HOSPITALDB.GERENTE (IDGERENTE,DESCGERENTE,FECHAREGISTRO) values ('6','Antonio Merchan',to_date('18/08/23','DD/MM/RR'));
Insert into HOSPITALDB.GERENTE (IDGERENTE,DESCGERENTE,FECHAREGISTRO) values ('7','Placido Velez',to_date('07/07/22','DD/MM/RR'));
Insert into HOSPITALDB.GERENTE (IDGERENTE,DESCGERENTE,FECHAREGISTRO) values ('8','Victorino Molinero',to_date('19/08/23','DD/MM/RR'));
REM INSERTING into HOSPITALDB.HOSPITAL
SET DEFINE OFF;
Insert into HOSPITALDB.HOSPITAL (IDHOSPITAL,NOMBRE,ANTIGUEDAD,AREA,FECHAREGISTRO,IDDISTRITO,IDSEDE,IDGERENTE,IDCONDICION) values ('129','La sarte','80','500',to_date('15/09/22','DD/MM/RR'),'5','3','9','2');
Insert into HOSPITALDB.HOSPITAL (IDHOSPITAL,NOMBRE,ANTIGUEDAD,AREA,FECHAREGISTRO,IDDISTRITO,IDSEDE,IDGERENTE,IDCONDICION) values ('123','Hospital Belen de Lambayeque','102','1400',to_date('07/02/24','DD/MM/RR'),'7','2','1','1');
Insert into HOSPITALDB.HOSPITAL (IDHOSPITAL,NOMBRE,ANTIGUEDAD,AREA,FECHAREGISTRO,IDDISTRITO,IDSEDE,IDGERENTE,IDCONDICION) values ('124','Clínica Metropolitana','8','460',to_date('07/02/24','DD/MM/RR'),'1','1','2','1');
Insert into HOSPITALDB.HOSPITAL (IDHOSPITAL,NOMBRE,ANTIGUEDAD,AREA,FECHAREGISTRO,IDDISTRITO,IDSEDE,IDGERENTE,IDCONDICION) values ('224','Servimed Perú','35','350',to_date('07/02/24','DD/MM/RR'),'3','1','3','3');
Insert into HOSPITALDB.HOSPITAL (IDHOSPITAL,NOMBRE,ANTIGUEDAD,AREA,FECHAREGISTRO,IDDISTRITO,IDSEDE,IDGERENTE,IDCONDICION) values ('321','Clínica Nuestra Señor De La Misericordia','15','390',to_date('15/09/23','DD/MM/RR'),'4','2','4','1');
Insert into HOSPITALDB.HOSPITAL (IDHOSPITAL,NOMBRE,ANTIGUEDAD,AREA,FECHAREGISTRO,IDDISTRITO,IDSEDE,IDGERENTE,IDCONDICION) values ('126','Clinica Urosalud','42','608',to_date('15/09/23','DD/MM/RR'),'2','3','5','2');
REM INSERTING into HOSPITALDB.PROVINCIA
SET DEFINE OFF;
Insert into HOSPITALDB.PROVINCIA (IDPROVINCIA,DESCPROVINCIA,FECHAREGISTRO) values ('1','Chiclayo',to_date('15/09/22','DD/MM/RR'));
Insert into HOSPITALDB.PROVINCIA (IDPROVINCIA,DESCPROVINCIA,FECHAREGISTRO) values ('2','Trujillo',to_date('15/09/22','DD/MM/RR'));
Insert into HOSPITALDB.PROVINCIA (IDPROVINCIA,DESCPROVINCIA,FECHAREGISTRO) values ('3','Cliclayo',to_date('15/09/22','DD/MM/RR'));
REM INSERTING into HOSPITALDB.SEDE
SET DEFINE OFF;
Insert into HOSPITALDB.SEDE (IDSEDE,DESCSEDE,FECHAREGISTRO) values ('1','NORTE',to_date('15/09/22','DD/MM/RR'));
Insert into HOSPITALDB.SEDE (IDSEDE,DESCSEDE,FECHAREGISTRO) values ('2','SUR',to_date('15/09/22','DD/MM/RR'));
Insert into HOSPITALDB.SEDE (IDSEDE,DESCSEDE,FECHAREGISTRO) values ('3','CENTRAL',to_date('15/09/22','DD/MM/RR'));
--------------------------------------------------------
--  DDL for Index SYS_C008324
--------------------------------------------------------

  CREATE UNIQUE INDEX "HOSPITALDB"."SYS_C008324" ON "HOSPITALDB"."GERENTE" ("IDGERENTE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C008326
--------------------------------------------------------

  CREATE UNIQUE INDEX "HOSPITALDB"."SYS_C008326" ON "HOSPITALDB"."CONDICION" ("IDCONDICION") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C008328
--------------------------------------------------------

  CREATE UNIQUE INDEX "HOSPITALDB"."SYS_C008328" ON "HOSPITALDB"."SEDE" ("IDSEDE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C008330
--------------------------------------------------------

  CREATE UNIQUE INDEX "HOSPITALDB"."SYS_C008330" ON "HOSPITALDB"."PROVINCIA" ("IDPROVINCIA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C008332
--------------------------------------------------------

  CREATE UNIQUE INDEX "HOSPITALDB"."SYS_C008332" ON "HOSPITALDB"."DISTRITO" ("IDDISTRITO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C008343
--------------------------------------------------------

  CREATE UNIQUE INDEX "HOSPITALDB"."SYS_C008343" ON "HOSPITALDB"."HOSPITAL" ("IDHOSPITAL") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C008326
--------------------------------------------------------

  CREATE UNIQUE INDEX "HOSPITALDB"."SYS_C008326" ON "HOSPITALDB"."CONDICION" ("IDCONDICION") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C008332
--------------------------------------------------------

  CREATE UNIQUE INDEX "HOSPITALDB"."SYS_C008332" ON "HOSPITALDB"."DISTRITO" ("IDDISTRITO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C008324
--------------------------------------------------------

  CREATE UNIQUE INDEX "HOSPITALDB"."SYS_C008324" ON "HOSPITALDB"."GERENTE" ("IDGERENTE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C008343
--------------------------------------------------------

  CREATE UNIQUE INDEX "HOSPITALDB"."SYS_C008343" ON "HOSPITALDB"."HOSPITAL" ("IDHOSPITAL") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C008330
--------------------------------------------------------

  CREATE UNIQUE INDEX "HOSPITALDB"."SYS_C008330" ON "HOSPITALDB"."PROVINCIA" ("IDPROVINCIA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C008328
--------------------------------------------------------

  CREATE UNIQUE INDEX "HOSPITALDB"."SYS_C008328" ON "HOSPITALDB"."SEDE" ("IDSEDE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Procedure SP_HOSPITAL_ACTUALIZAR
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "HOSPITALDB"."SP_HOSPITAL_ACTUALIZAR" (p_idhospital in hospital.idhospital%type,p_distrito in hospital.iddistrito%type,
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

/
--------------------------------------------------------
--  DDL for Procedure SP_HOSPITAL_ELIMINAR
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "HOSPITALDB"."SP_HOSPITAL_ELIMINAR" (p_idhospital in hospital.idhospital%TYPE, p_mensaje OUT VARCHAR2)
IS

--Utilizo al funcion type para asignarle a la variable declarada el mismo
-- tipo que tiene la variable o campo al que hace referencia

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

--Agrego el manejo de excepcion por si el id del hospital no se
--encuentra en la base de datos
EXCEPTION
WHEN NO_DATA_FOUND THEN

dbms_output.put_line('El hospital buscado no existe!!!');

end;

/
--------------------------------------------------------
--  DDL for Procedure SP_HOSPITAL_LISTAR
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "HOSPITALDB"."SP_HOSPITAL_LISTAR" (p_idhospital in hospital.idhospital%TYPE, p_mensaje OUT VARCHAR2)
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

/
--------------------------------------------------------
--  DDL for Procedure SP_HOSPITAL_REGISTRAR
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "HOSPITALDB"."SP_HOSPITAL_REGISTRAR" (p_idhospital in hospital.idhospital%type, p_nombre_hospital in hospital.nombre%type, p_antiguedad in hospital.antiguedad%type, p_area in hospital.area%type,
     p_registro in hospital.fecharegistro%TYPE,p_distrito in hospital.iddistrito%type, p_sede in hospital.idsede%type,p_idgerente in gerente.idgerente%type,p_condicion condicion.idcondicion%TYPE, p_mensaje OUT VARCHAR2)
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
        values(p_idhospital, p_nombre_hospital, p_antiguedad, p_area, p_registro, p_distrito, p_sede, p_idgerente, p_condicion);

p_mensaje := 'Hospital agregado correctamente';


end;

/
--------------------------------------------------------
--  Constraints for Table CONDICION
--------------------------------------------------------

  ALTER TABLE "HOSPITALDB"."CONDICION" MODIFY ("IDCONDICION" NOT NULL ENABLE);
  ALTER TABLE "HOSPITALDB"."CONDICION" ADD PRIMARY KEY ("IDCONDICION")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table DISTRITO
--------------------------------------------------------

  ALTER TABLE "HOSPITALDB"."DISTRITO" MODIFY ("IDDISTRITO" NOT NULL ENABLE);
  ALTER TABLE "HOSPITALDB"."DISTRITO" ADD PRIMARY KEY ("IDDISTRITO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table GERENTE
--------------------------------------------------------

  ALTER TABLE "HOSPITALDB"."GERENTE" MODIFY ("IDGERENTE" NOT NULL ENABLE);
  ALTER TABLE "HOSPITALDB"."GERENTE" ADD PRIMARY KEY ("IDGERENTE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table HOSPITAL
--------------------------------------------------------

  ALTER TABLE "HOSPITALDB"."HOSPITAL" MODIFY ("IDHOSPITAL" NOT NULL ENABLE);
  ALTER TABLE "HOSPITALDB"."HOSPITAL" MODIFY ("NOMBRE" NOT NULL ENABLE);
  ALTER TABLE "HOSPITALDB"."HOSPITAL" MODIFY ("ANTIGUEDAD" NOT NULL ENABLE);
  ALTER TABLE "HOSPITALDB"."HOSPITAL" MODIFY ("AREA" NOT NULL ENABLE);
  ALTER TABLE "HOSPITALDB"."HOSPITAL" MODIFY ("FECHAREGISTRO" NOT NULL ENABLE);
  ALTER TABLE "HOSPITALDB"."HOSPITAL" MODIFY ("IDDISTRITO" NOT NULL ENABLE);
  ALTER TABLE "HOSPITALDB"."HOSPITAL" MODIFY ("IDSEDE" NOT NULL ENABLE);
  ALTER TABLE "HOSPITALDB"."HOSPITAL" MODIFY ("IDGERENTE" NOT NULL ENABLE);
  ALTER TABLE "HOSPITALDB"."HOSPITAL" MODIFY ("IDCONDICION" NOT NULL ENABLE);
  ALTER TABLE "HOSPITALDB"."HOSPITAL" ADD PRIMARY KEY ("IDHOSPITAL")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PROVINCIA
--------------------------------------------------------

  ALTER TABLE "HOSPITALDB"."PROVINCIA" MODIFY ("IDPROVINCIA" NOT NULL ENABLE);
  ALTER TABLE "HOSPITALDB"."PROVINCIA" ADD PRIMARY KEY ("IDPROVINCIA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table SEDE
--------------------------------------------------------

  ALTER TABLE "HOSPITALDB"."SEDE" MODIFY ("IDSEDE" NOT NULL ENABLE);
  ALTER TABLE "HOSPITALDB"."SEDE" ADD PRIMARY KEY ("IDSEDE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table DISTRITO
--------------------------------------------------------

  ALTER TABLE "HOSPITALDB"."DISTRITO" ADD CONSTRAINT "FK_DISTRITO_IDPROVINCIA" FOREIGN KEY ("IDPROVINCIA")
	  REFERENCES "HOSPITALDB"."PROVINCIA" ("IDPROVINCIA") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table HOSPITAL
--------------------------------------------------------

  ALTER TABLE "HOSPITALDB"."HOSPITAL" ADD CONSTRAINT "FK_HOSPITAL_IDDISTRITO" FOREIGN KEY ("IDDISTRITO")
	  REFERENCES "HOSPITALDB"."DISTRITO" ("IDDISTRITO") ENABLE;
  ALTER TABLE "HOSPITALDB"."HOSPITAL" ADD CONSTRAINT "FK_HOSPITAL_IDSEDE" FOREIGN KEY ("IDSEDE")
	  REFERENCES "HOSPITALDB"."SEDE" ("IDSEDE") ENABLE;
  ALTER TABLE "HOSPITALDB"."HOSPITAL" ADD CONSTRAINT "FK_HOSPITAL_IDGERENTE" FOREIGN KEY ("IDGERENTE")
	  REFERENCES "HOSPITALDB"."GERENTE" ("IDGERENTE") ENABLE;
  ALTER TABLE "HOSPITALDB"."HOSPITAL" ADD CONSTRAINT "FK_HOSPITAL_IDCONDICION" FOREIGN KEY ("IDCONDICION")
	  REFERENCES "HOSPITALDB"."CONDICION" ("IDCONDICION") ENABLE;
