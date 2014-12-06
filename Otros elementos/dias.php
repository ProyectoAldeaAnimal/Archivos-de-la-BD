<?php

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
$year = 2014; 
$dias= array();
for($i=0;$i<12;$i++){

	$dias[$i] = getMonthDays($i+1,$year);
}
for($i=0;$i<12;$i++){
echo "mes:",$i+1," ", "dias : " ,$dias[$i],"<br>";
}

?>