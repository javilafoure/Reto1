-- TABLA GERENTE: select * from gerente;
insert into gerente(idGerente, descGerente, fechaRegistro) values(1, 'Constantino Jorge', '02/11/2023');
insert into gerente(idGerente, descGerente, fechaRegistro) values(2, 'Unai Escobar', '24/05/2021');
insert into gerente(idGerente, descGerente, fechaRegistro) values(3, 'Aurelio Valles', '15/08/2023');
insert into gerente(idGerente, descGerente, fechaRegistro) values(4, 'Alexander Juarez', '21/10/2022');
insert into gerente(idGerente, descGerente, fechaRegistro) values(5, 'Cayetano Gimenez', '25/01/2021');
insert into gerente(idGerente, descGerente, fechaRegistro) values(6, 'Antonio Merchan', '18/08/2023');
insert into gerente(idGerente, descGerente, fechaRegistro) values(7, 'Placido Velez', '07/07/2022');
insert into gerente(idGerente, descGerente, fechaRegistro) values(8, 'Victorino Molinero', '19/08/2023');

-- TABLA CONDICION: select * from condicion;
insert into condicion(idCondicion, descCondicion, fechaRegistro) values(1, 'CLAUSURADO', '19/09/2023');
insert into condicion(idCondicion, descCondicion, fechaRegistro) values(2, 'ACTIVO', '11/07/2021');
insert into condicion(idCondicion, descCondicion, fechaRegistro) values(3, 'INHABILITADO', '08/08/2022');

-- TABLA SEDE: select * from sede;
insert into sede(idSede, descSede, fechaRegistro) values(1, 'NORTE', '15/09/2022');
insert into sede(idSede, descSede, fechaRegistro) values(2, 'SUR', '15/09/2022');
insert into sede(idSede, descSede, fechaRegistro) values(3, 'CENTRAL', '15/09/2022');

-- TABLA PROVINCIA: select * from provincia;
insert into provincia(idProvincia, descprovincia, fechaRegistro) values(1, 'Chiclayo', '15/09/2022');
insert into provincia(idProvincia, descprovincia, fechaRegistro) values(2, 'Trujillo', '15/09/2022');
insert into provincia(idProvincia, descprovincia, fechaRegistro) values(3, 'Cliclayo', '15/09/2022');

-- TABLA DISTRITO: select * from distrito;
insert into distrito(idDistrito, idProvincia, descDistrito, fechaRegistro) values(1, 1, 'La Victoria', '16/09/2023');
insert into distrito(idDistrito, idProvincia, descDistrito, fechaRegistro) values(2, 1, 'Pimentel', '16/09/2023');
insert into distrito(idDistrito, idProvincia, descDistrito, fechaRegistro) values(3, 1, 'José Leonardo O.', '16/09/2023');
insert into distrito(idDistrito, idProvincia, descDistrito, fechaRegistro) values(4, 2, 'Trujillo', '16/09/2023');
insert into distrito(idDistrito, idProvincia, descDistrito, fechaRegistro) values(5, 2, 'Laredo', '16/09/2023');
insert into distrito(idDistrito, idProvincia, descDistrito, fechaRegistro) values(6, 2, 'Moche', '16/09/2023');
insert into distrito(idDistrito, idProvincia, descDistrito, fechaRegistro) values(7, 3, 'Lagunas', '15/09/2023');
insert into distrito(idDistrito, idProvincia, descDistrito, fechaRegistro) values(8, 3, 'Monsefu', '15/09/2023');
insert into distrito(idDistrito, idProvincia, descDistrito, fechaRegistro) values(9, 3, 'Eten', '15/09/2023');
