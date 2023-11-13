# Formula 1 API

Endpoint de la API : **http://localhost/TPe-webII-parte3/api/escuderias**

# Endpoints:

## Servicios GET

- `GET /escuderias`: Se accede al listado completo de escuderias que existen en la base de datos 'formula ' dentro de la tabla escuderias

    - #### Ordenamiento por campos
        
        - `GET /escuderias?sort=FIELD&order=ORDERTYPE`  


        Agregando `?sort=FIELD&order=ORDERTYPE` permite ordenar la lista de manera ascendente o descendente por un campo. El campo se debe especificar en el `sort` y el orden deseado en el `order`. Solo es posible ordenar por campos existentes en la tabla de la base de datos, de lo contrario existira un `400 - Bad Request`.


        ***Ejemplo*** ```GET /escuderias?sort=puntos_equipo&order=desc```  
        Este punto de entrada traera el listado de escuderias ordenado descendentemente por el campo `puntos_equipo`


    - #### Paginacion

        - `GET /escuderias?limit=value&pag=value`  

        A traves de los Query Params se pasa un limite que no puede exceder a la totalidad de registros de la tabla. Este limite establece la cantidad total de escuderias que se muestran por pagina, y para "recorrer" los registros se va aumentando el valor de la pagina. Si el limite no esta dentro de los posibles se producira un error `400 Bad Request`.

        ***Ejemplo*** `GET /escuderias?limit=2&pag=1`


            [
                {
                "id": 4,
            	"equipos": "Aston Martin",
                "img": "img/63f476ab5c263f.png",
                "description": "La incursión original de Aston Martin en la Fórmula (hace más de medio siglo) duró sólo cinco carreras. Pero esta vez la cosa va en serio. Este equipo de F1 no es ajeno al éxito, ya que ganó con su forma original de Jordan y más recientemente como Racing Point en 2020. Reconocido por su capacidad para superar su peso, y ahora con un dos veces campeón liderando su alineación de pilotos. , Aston Martin es un equipo a seguir.",
                "puntos_equipo": 217,
                "pos_equipos": 4
                },
                {
                "id": 5,
             	"equipos": "McLaren",
    	        "img": "img/6347h6abfefe3e.png",
    		"description": "Desde que ingresó al deporte en 1966 bajo la guía y el incansable esfuerzo del fundador epónimo Bruce, el éxito de McLaren ha sido impresionante. Cinco brillantes décadas han dado lugar a innumerables victorias, poles y podios, sin mencionar ocho campeonatos de constructores. Es más, algunos de los mejores pilotos de este deporte se hicieron famosos con el equipo, incluidos Emerson Fittipaldi, Ayrton Senna, Mika Hakkinen y Lewis Hamilton.",
    		"puntos_equipo": 115,
    		"pos_equipos": 5
                }
            ]  

        
    - #### Filtrado
        - `GET /escuderias?field=value&value=value`

        Estableciendo un campo de la tabla es posible filtrar por algun valor en especifico. Es necesario que el campo que se pasa por el Query Param sea uno existente en la tabla, de lo contrario surgira un error `400 Bad Request`. Y en el caso de que el valor que se busca filtrar no exista, ocurre un error `404 Not Found`. 

        Si el campo que se esta filtrando es el *puntos_eqipo*, la consulta traera todos los registros que tengan puntos por equipo menor o igual al especificado en el query param.

        ***Ejemplo*** `GET /escuderias?field=puntos_equipo&value=200`  
        Esta peticion traera todas las escuderias filtradas por los puntos a especificar en el value


        
- `GET /escuderias/:ID`: Este endpoint permite acceder a una escuderia en especifico de la tabla dado un id en particular. En caso de que el id sea incorrecto, se producira un error ## 404 Not Found 

- ***Ejemplo*** `GET /escuderias/4`  


        {
            "id": 4,
            "equipos": "Aston Martin",
            "img": "img/63f476ab5c263f.png",
            "description": "La incursión original de Aston Martin en la Fórmula (hace más de medio siglo) duró sólo cinco carreras. Pero esta vez la cosa va en serio. Este equipo de F1 no es ajeno al éxito, ya que ganó con su forma original de Jordan y más recientemente como Racing Point en 2020. Reconocido por su capacidad para superar su peso, y ahora con un dos veces campeón liderando su alineación de pilotos. , Aston Martin es un equipo a seguir.",
            "puntos_equipo": 217,
            "pos_equipos": 4
        }

***
      
## Servicio POST
- `POST /escuderias`: Este servicio permite agregar una nueva escuderia a la tabla a traves del body de postman 

- ***Ejemplo*** `POST /escuderias`  


        {
	    "id": 1,            
	    "equipos": "Prueba POST",
            "description": "Descripcion",
            "puntos_equipo": 100,
            "pos_equipos": 1
        }

***


## Servicio PUT
- `PUT /escuderias/:ID`
Por medio de este endpoint se puede hacer una modificacion a una escuderia existente en la tabla de la base de datos. Para especificar la escuderia a modificar se captura el ID que viene por parametro. Este ID debe existir en la tabla de lo contrario se arroja un status `404 Not Found`.
    La modificacion al igual que con `POST` se hace a traves del body de postman, respetando la estructura del objeto.  
   
- ***Ejemplo*** `PUT /escuderias/123`  


    Los nuevos valores de los campos de la escuderia 123 seran los siguientes:  

    ```
    {
        "id": "1",
        "equipos": Prueba PUT,
        "description": "Descripcion editada",
        "puntos_equipo": 50,
        "pos_equipos": 10
    }
    ```

***


## Servicio DELETE
- `DELETE /pilotos/:ID`
    
    Este servicio elimina la escuderia de la tabla cuyo id sea el que se pase por parametro. De no existir tal parametro ocurrira un `404 Not found`

- ***Ejemplo*** `DELETE /escuderias/123`


    De existir esa escuderia la respuesta sera:
    "Eliminado con exito la escuderia con id = 123"

***


## Autorizacion 
- `GET /auth/token`

El usuario que consume la api tiene libertad de ver todos los registros, de manera ordenada, filtrada y/o paginada. Pero para hacer modificaciones (**PUT POST**) debe estar **autorizado**, para esto, desde este endpoint `GET /auth/token` debe hacer una autorizacion en postman de tipo **basic**, ingresar su **email** y **contraseña**.  

Estos datos deben coincidir con los registros de la base de datos en la tabla *usuarios*, si estos datos son erroneos o estan incompletos se produce un error `401 Not Found Unauthorized`.  

Si la autenticacion es correcta, devuelve un *token*, el cual a traves del endopoint `PUT /escuderias/:ID` O `POST /escuderias` se utiliza en la autorizacion de tipo **Bearer Token** y si es correcto el token, se ejecuta el PUT o POST.
>>>>>>> origin/master
