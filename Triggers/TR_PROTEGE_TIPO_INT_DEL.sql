CREATE TRIGGER `TR_PROTEGE_TIPO_INT_DEL` BEFORE DELETE ON `tipo_de_int`
 FOR EACH ROW BEGIN
DECLARE TIPO int;
DECLARE NOMBRE1 varchar(50);
DECLARE NOMBRE2 varchar(50);
DECLARE specialty CONDITION FOR SQLSTATE '45000';
SET TIPO= OLD.ID_TIPO_INT;
SET NOMBRE1 = 'Castración felina';
SET NOMBRE2 = 'Castración canina';
IF(TIPO=1)
THEN
SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT = 'Esa fila no se puede borrar';

ELSEIF(TIPO=2)
THEN
SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT = 'Esa fila no se puede borrar';
END IF;
END