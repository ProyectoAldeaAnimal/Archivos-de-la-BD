CREATE TRIGGER `TR_ESTERI_INTERV` AFTER INSERT ON `inter`
 FOR EACH ROW BEGIN 
DECLARE INTERVENCION INT;
DECLARE FECHA DATE;
DECLARE OBS VARCHAR(200);
DECLARE ORDEN INT;
DECLARE TIPO INT;
DECLARE MASCOTA INT;
DECLARE Y INT;
DECLARE PRESTACION INT;
SET INTERVENCION = (SELECT ID_INT FROM inter WHERE ID_INT IN (SELECT MAX(ID_INT) FROM inter));
SET OBS = (SELECT OBS_INT FROM inter WHERE ID_INT = INTERVENCION);
SET FECHA = (SELECT DATE(FECHA_INGRESO_INT) FROM inter WHERE ID_INT =INTERVENCION);
SET ORDEN = (SELECT ID_ORDEN_INT FROM inter WHERE ID_INT = INTERVENCION);
SET MASCOTA = (
	SELECT tm.ID_TIPO_MAS 
	FROM orden_int as o,atencion as a, mas as m, tipo_mas as tm 
	WHERE  o.ID_ORDEN_INT = ORDEN and o.ID_ATENCION = a.ID_ATENCION and a.ID_MAS = m.ID_MAS and m.ID_TIPO_MAS = tm.ID_TIPO_MAS
	LIMIT 1);
    SET PRESTACION =(
	SELECT tp.ID_TIPO_PRES 
	FROM orden_int as oi,atencion as a,pres as p ,tipo_pres as tp
	WHERE  oi.ID_ORDEN_INT = ORDEN and oi.ID_ATENCION= a.ID_ATENCION and a.ID_PRES = p.ID_PRES and p.ID_TIPO_PRES = tp.ID_TIPO_PRES 
	LIMIT 1);
SET TIPO = (SELECT ID_TIPO_INT FROM orden_int WHERE ID_ORDEN_INT = ORDEN);
IF((MASCOTA=1 or MASCOTA =2)and (TIPO=1 or TIPO=2))
THEN

SET Y = (SELECT mas.ID_MAS 
    FROM orden_int, inter,mas, atencion 
	WHERE 
    inter.ID_INT IN (SELECT ID_INT FROM inter WHERE ID_INT IN (SELECT MAX(ID_INT) FROM inter))
                                          and inter.ID_ORDEN_INT = orden_int.ID_ORDEN_INT 
                                          and orden_int.ID_ATENCION = atencion.ID_ATENCION and 
                                          atencion.ID_MAS = mas.ID_MAS);
UPDATE ficha SET ESTERILIZACION =1 ,FECHA_ESTERILIZACION = FECHA,OBS_ESTERILIZACION = OBS   WHERE ficha.ID_MAS = Y;
ELSEIF (PRESTACION=2)
THEN 
SET Y = (SELECT mas.ID_MAS 
    FROM orden_int, inter,mas, atencion 
	WHERE 
    inter.ID_INT IN (SELECT ID_INT FROM inter WHERE ID_INT IN (SELECT MAX(ID_INT) FROM inter))
                                          and inter.ID_ORDEN_INT = orden_int.ID_ORDEN_INT 
                                          and orden_int.ID_ATENCION = atencion.ID_ATENCION and 
                                          atencion.ID_MAS = mas.ID_MAS);
UPDATE ficha SET ESTERILIZACION =1 ,FECHA_ESTERILIZACION = FECHA,OBS_ESTERILIZACION = OBS   WHERE ficha.ID_MAS = Y;
END IF;
END