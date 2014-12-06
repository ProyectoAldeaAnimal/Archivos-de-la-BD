CREATE TRIGGER `TR_LOG_AGENDA_INS` AFTER INSERT ON `agenda`
 FOR EACH ROW BEGIN 

DECLARE DATOSA varchar(500);
DECLARE DATOSD varchar(500);
DECLARE RUT varchar(20);
DECLARE INST varchar(20); 
DECLARE FECHA timestamp;
DECLARE TABLA varchar(20);
DECLARE TEMP int;


SET TEMP= (SELECT MAX(ID_AGENDA)FROM AGENDA);



SET DATOSD= (SELECT CONCAT(CAST(TEMP AS CHAR),',',CAST(NEW.ID_MAS AS CHAR),',',CAST(NEW.ID_VET AS CHAR),',',CAST(NEW.ID_PRES AS CHAR),',',NEW.ESTADO_AGENDA));



SET INST= 'INSERT';
SET FECHA = CURRENT_TIMESTAMP();
SET TABLA = 'AGENDA';
SET RUT = (SELECT C.RUT_CLI FROM cli as C,mas as M,agenda as A  WHERE  NEW.ID_MAS = M.ID_MAS and M.ID = C.ID LIMIT 1);
INSERT INTO `log_sql`(`ID_LOG`, `RUT_USUARIO`, `TABLA`, `INSTRUCCION`, `DATOS_ANTES`, `DATOS_DESPUES`, `FECHA_MOD`) VALUES (NULL,RUT,TABLA,INST,NULL,DATOSD,FECHA);

END