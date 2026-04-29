# Tarea-Tema-2-SAD-2-ASIR

**En este repositorio** se alojará un script **hecho mediante Bash**, el cual consiste en un **verificador de archivos** creado para el correcto desarrollo de la tarea del tema 2 del módulo Seguridad y Alta Disponibilidad de 2ºASIR.

Dicho script **genera y compara hashes** mediante el uso de funciones correspondientes a los algoritmos criptográficos **MD5**, **SHA-256** y **SHA-512** del archivo.

**Una vez generado** el hash correspondiente, se podrá lanzar de nuevo el script para generar un nuevo hash y verificar si ha sido alterado o no pasando como parámetros el archivo a verificar su integridad y el hash generado antes respectivamente. De esta manera se compara el hash conocido con el hash generado que posea dicho archivo y, en caso de que no coincidan, significa que el fichero ha sido manipulado.

Es importante mencionar que este script contiene diversas validaciones para **verificar** si el archivo existe, si se ha introducido y si se ha puesto **como segundo parámetro** una cadena de texto **(en nuestro caso el hash conocido)**.
