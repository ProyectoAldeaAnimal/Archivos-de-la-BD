CREATE TRIGGER `TR_LOG_AGENDA_DEL` BEFORE DELETE ON `agenda`
 FOR EACH ROW BEGIN
DECLARE DATOSA varchar(500);
DECLARE DATOSD varchar(500);
DECLARE RUT varchar(20);
DECLARE INST varchar(20); 
DECLARE FECHA timestamp;
DECLARE TABLA varchar(20);
SET DATOSD= (SELECT CONCAT(CAST(OLD.ID_AGENDA AS CHAR),',',CAST(OLD.ID_MAS AS CHAR),',',CAST(OLD.ID_VET AS CHAR),',',CAST(OLD.ID_PRES AS CHAR),',',OLD.ESTADO_AGENDA));
SET INST= 'DELETE';
SET FECHA = CURRENT_TIMESTAMP();
SET TABLA = 'AGENDA';
INSERT INTO `log_sql`(`ID_LOG`, `RUT_USUARIO`, `TABLA`, `INSTRUCCION`, `DATOS_ANTES`, `DATOS_DESPUES`, `FECHA_MOD`) VALUES (NULL,'NULL',TABLA,INST,NULL,DATOSD,FECHA);

END