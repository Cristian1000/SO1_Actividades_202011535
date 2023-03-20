# Actividad 4
Para realizar un systemd unit de tipo servicio para ejecutar un script que imprima un saludo y la fecha actual se deben realizar los siguientes pasos: 


## Pasos para la instalación y ejecucion del servicio

1.	Se crea un script que ejecutara la tarea especificada, este tiene el nombre de actividad4.sh dentro de la carpetea de code [actividad4.sh](code/actividad4.sh)

    A este script se le deben dar los permisos de ejecucion con el comando:
    ```
    chmod +x actividad4.sh 
    ```

2. Se crea un archivo de systemd unit en la carpeta `/etc/systemd/system/` , con el respetivo nomrbre: **actividad4.service** este servira para ejecutar el servicio. Se realiza con el sigueinte comando: 
    ```
    sudo nano /etc/systemd/system/saludar.service 
    ```  
3. Al ejecutar el comando se abrira el panel para editar el documento donde se podra escribir la funcion del servicio con otros parametros, este codigo se encuentra en [actividad4.service](code/actividad4.service).

4. Ya modificado el servicio se guarda y cierra el archivo presionando Ctrl + o y Ctrl + x respectivamente.

5. Posteriormente recargar los servicios para que incluya el nuevo archivo creado con el comando:
    ```
    sudo systemctl daemon-reload   
    ``` 

6. Iniciar el servicio con el comando:
    ```
    sudo systemctl start actividad4.service   
    ```

7. Finalmente para verificar el estado y el mensaje despues de la ejecucion del servicio utilizar el comando: 

    ```
    sudo systemctl status actividad4.service    
    ```
