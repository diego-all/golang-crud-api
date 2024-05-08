# Golang CRUD API

API written in Golang that stores information in a Postgres database. Implements CRUD operations for the Product entity of the E-Commerce domain.


## Domain model metadata

Domain: E-Commerce, Supermarket, (Shopping Cart)

    Product: (Id, Name, description, Price)

Domain model using class diagram notation


## REST API


## API Endpoints

The available API endpoints are outlined below.
<br >

<details><summary><code> Health GET /health   </code></summary>

## 

Health Endpoint (pingpong)


Request


```
curl -XGET 'localhost:9090/health'
```

Success Response:

 - Status Code: 200

</summary></details>

-----------------------------------------------------------

<details><summary><code> Create product POST /products  </code></summary>

## 
This endpoint is used for create a new product in the database.

Request

Body:

```json
{
"Name": "uvas",
"Description": "uvas chilenas",
"Price": 100
}
```

Success Response:

 - Status Code: 202

 - Body:

```json
{
    "error": false,
    "message": "Product successfully created",
    "data": {
        "product": "uvas"
    }
}
```


- Usage

```
curl --location 'http://localhost:9090/products' \
--header 'Content-Type: application/json' \
--data '{
"Name": "uvas",
"Description": "uvas chilenas",
"Price": 100
}'
```
</summary></details>

-----------------------------------------------------------

<details><summary><code> Get product GET /products/get/{id}  </code></summary>

## 
This endpoint is used for get information about a product stored in the database.

Request

PathParam:

```
/products/get/{id}
```

Success Response:

 - Status Code: 200

 - Body:

```json
{
    "error": false,
    "message": "Product successfully obtained",
    "data": {
        "product": {
            "name": "uvas",
            "description": "uvas chilenas",
            "price": 100
        }
    }
}
```


- Usage

```
curl --location 'http://localhost:9090/products/get/70'
```
</summary></details>

-----------------------------------------------------------

<details><summary><code> Update product PUT /products/update{id}  </code></summary>

## 
This endpoint is used for update the information about a product stored in the database using the id.

Request

PathParam:

```
/products/update/{id}
```

Body:

```json
{
"Name": "uvas",
"Description": "uvas chilenas",
"Price": 100
}
```

Success Response:

 - Status Code: 200

 - Body:

```json
{
    "error": false,
    "message": "Product successfully updated",
    "data": {
        "product": "uvas"
    }
}
```


- Usage

```
curl --location --request PUT 'http://localhost:9090/products/update/70' \
--header 'Content-Type: application/json' \
--data '{
"Name": "uvas",
"Description": "uvas chilenas rojas",
"Price": 105
}'
```
</summary></details>

-----------------------------------------------------------

<details><summary><code> List products GET /products/all  </code></summary>

## 
This endpoint is used for get all the products stored in the database.

Request



Success Response:

 - Status Code: 200

 - Body:

```json
{
    "error": false,
    "message": "Data successfully obtained",
    "data": {
        "products": [
            {
                "id": 14,
                "name": "Reloj de pulsera",
                "description": "Reloj analógico con correa de acero inoxidable",
                "price": 149,
                "created_at": "2024-05-01T06:16:54.854767Z",
                "updated_at": "2024-05-01T06:16:54.854767Z"
            },
            {
                "id": 70,
                "name": "uvas",
                "description": "uvas chilenas rojas",
                "price": 105,
                "created_at": "2024-05-07T20:18:24.488224Z",
                "updated_at": "2024-05-07T20:42:17.654791Z"
            }
        ]
    }
}
```


- Usage

```
curl --location 'http://localhost:9090/products/all'
```
</summary></details>

-----------------------------------------------------------


<details><summary><code> Get product GET /products/get/{id}  </code></summary>

## 
This endpoint is used for delete a product stored from the database.

Request

PathParam:

```
/products/get/{id}
```

Success Response:

 - Status Code: 200

 - Body:

```json
{
    "error": false,
    "message": "Product successfully deleted"
}
```


- Usage

```
curl --location --request DELETE 'http://localhost:9090/products/delete/69'
```
</summary></details>

-----------------------------------------------------------





### API Endpoints





### API Collection

You can find the API collections [here](Golang-CRUD-API.postman_collection.json)








