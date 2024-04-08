# README

* Ruby version 3.2

* Rails version 7.1.3.2

* Es necesario que se cree la base de datos en el proyecto y que se ejecute el seed con los siguientes comandos para el correcto funcionamiento del proyecto:
    - rails db:migrate
    - rails db:seed
    
* Instalar las gemas con "bundle install"

* Ejecutar tests de los endpoints:
    - rspec spec

* Levantar servidor con el comando:
    - rails s

* Los endpoints en la API son los siguientes:
    - GET   api/v1/drive_routes/:id() 

        - Recibe como parámetro el id de la Ruta
    - POST  api/v1/transactions
        - Recibe como parámetros el siguiente JSON:
        ```json
            {"transaction_type": "String", //Define si es un Retiro o Entrega, valores definidos en modelo
            "reveiver": "String", //Responsable de la Recepción en el destino
            "seller": "String", //Vendedor Responsable para el retiro en el origen
            "status": "String", //Status del retiro, valores definidos en modelo
            "trip_id": "Integer", //Id del viaje al que pertenece el retiro/entrega
            "observation": "String" //Observación realizada por Transportista (driver) de ser necesario
            }
        ```