CREATE TRIGGER `TR_LOG_OH_INS` AFTER INSERT ON `oferta_hor`
 FOR EACH ROW BEGIN 
DECLARE DATOSA varchar(500);
DECLARE DATOSD varchar(500);
DECLARE RUT varchar(20);
DECLARE INST varchar(20); 
DECLARE FECHA timestamp;
DECLARE TABLA varchar(20);
DECLARE TEMP int;
SET TEMP= NEW.ID_OFERTA_HOR;
SET DATOSD= (SELECT CONCAT(CAST(TEMP AS CHAR),',',CAST(NEW.ID_CAL AS CHAR),',',CAST(NEW.ID_VET AS CHAR),',',NEW.ESTADO_AGENDAMIENTO,',',CAST(NEW.HORA_INICIO AS CHAR),',',CAST(NEW.HORA_TERMINO AS CHAR)));
SET INST= 'INSERT';
SET TABLA = 'OFERTA_HOR';
SET RUT = (SELECT V.RUT_VET FROM vet as V  WHERE NEW.ID_VET = V.ID_VET LIMIT 1);
SET FECHA = CURRENT_TIMESTAMP();
INSERT INTO `log_sql`(`ID_LOG`, `RUT_USUARIO`, `TABLA`, `INSTRUCCION`, `DATOS_ANTES`, `DATOS_DESPUES`, `FECHA_MOD`) VALUES (NULL,RUT,TABLA,INST,NULL,DATOSD,FECHA);


END