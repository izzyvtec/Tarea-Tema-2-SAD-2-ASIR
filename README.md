# Tarea-Tema-2-SAD-2-ASIR

**En este repositorio** se alojará un script **hecho mediante Bash**, el cual consiste en un **verificador de archivos** creado para el correcto desarrollo de la tarea del tema 2 del módulo Seguridad y Alta Disponibilidad de 2ºASIR.

Dicho script **genera y compara hashes** mediante el uso de funciones correspondientes a los algoritmos criptográficos **MD5**, **SHA-256** y **SHA-512** del archivo.

**Una vez generado** el hash correspondiente, se podrá lanzar de nuevo el script para **generar un nuevo hash** y **verificar si ha sido alterado o no** pasando como parámetros **el archivo a verificar su integridad** y **el hash generado antes** respectivamente. De esta manera se compara **el hash conocido** con **el hash generado** que posea dicho archivo y, **en caso de que no coincidan**, significa que **el fichero ha sido manipulado**.

Cabe mencionar que este script contiene diversas validaciones para **verificar** si el archivo existe, si se ha introducido y si se ha puesto **como segundo parámetro** una cadena de texto no vacía **(en nuestro caso el hash conocido)**.

**IMPORTANTE:** El script contiene el **código para generar hashes** de los algoritmos anteriormente nombrados, pero **SOLO VALIDA HASHES SHA-256 MEDIANTE LA FUNCIÓN sha256sum**.

En el caso de que se quieran comparar hashes mediante las funciones correspondientes a MD5 (**md5sum**) y SHA-512 (**sha512sum**), solamente habría que cambiar la función que está dentro del último condicional, más concretamente en la variable **hash_generado**.

A continuación se adjunta imagen que muestra remarcado el código que habría que modificar:
<img width="915" height="629" alt="Funcion a modificar" src="https://github.com/user-attachments/assets/85980645-281a-48d6-af30-ada5ba704d81" />
