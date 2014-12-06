<?php


$conexion = mysql_connect("localhost" , "root" , "");
mysql_select_db("aldeaanimal",$conexion);


function getMonthDays($Month, $Year)
{
   
   if( is_callable("cal_days_in_month"))
   {
      return cal_days_in_month(CAL_GREGORIAN, $Month, $Year);
   }
   else
   {
      
      return date("d",mktime(0,0,0,$Month+1,0,$Year));
   }
}

function calcula_numero_dia_semana($dia,$mes,$ano){ 
   	$numerodiasemana = date('w', mktime(0,0,0,$mes,$dia,$ano)); 
   	
   	return $numerodiasemana; 
}
	$fer_ene  = array(0 => 1);
  $fer_feb  = array(0 =>0);
  $fer_mar  = array(0 => 0);
  $fer_abr  = array(0 => 0);
  $fer_may  = array(0 => 1,21);
  $fer_jun  = array(0 => 29);
  $fer_jul  = array(0 => 16);
  $fer_ago  = array(0 => 15);
  $fer_sep = array(0 => 18,19);
  $fer_oct  = array(0 => 12,31);
  $fer_nov  = array(0 => 1);
  $fer_dic  = array(0 => 8,25);
	$dias= array(0 =>"DO","LU" ,"MA","MI","JU","VI","SA");
	$feriados= array(1 => $fer_ene,$fer_feb,$fer_mar,$fer_abr,$fer_may,$fer_jun,$fer_jul,$fer_ago,$fer_sep,$fer_oct,$fer_nov,$fer_dic);
  $year = 2020;
  for($k=1;$k<=12;$k++){
  $dias_mes = getMonthDays($k,$year);
    for ($i=1; $i <=$dias_mes ; $i++) { 
      $nombre=calcula_numero_dia_semana($i,$k,$year);
      $trabajado=1;
      if($nombre==0)
        $trabajado=0;
      for ($j=0; $j <count($feriados[$k]); $j++) { 
        if($i==$feriados[$k][$j])
            $trabajado=0;
      }
      $formato = $year. '-'.$k.'-'.$i;
      //echo $formato,"<br>";
      mysql_query("INSERT INTO `aldeaanimal`.`cal` (`ID_CAL`, `FECHA_CAL`, `DIA_TRABAJADO`, `NOMBRE_DIA`) VALUES (NULL, '$formato', '$trabajado', '$dias[$nombre]');");
    }
  }
echo "Insercion realizada","<br>";
mysql_close($conexion);
?>
