# REST-API-with-MYSQL with Typescript in nodejs

A powerful RESTful API built using Node.js, Express, and MYSQL, designed for efficient and secure CRUD operations. It follows REST principles with clean, resource-oriented endpoints, supports scalability and performance, and integrates seamlessly with PostgreSQL for reliable data management.
## Environment Setup
  Prerequisites
  Node.js v18 or higher

  MySQL server
  
Edit the required value in folder `src/assets` file `config.json`.
  ```js

  { 
  "HOST_NAME": "127.0.0.1",  
  "PORT": 4000,
  "NODE_ENV": "development",
  "NODE_ENV_SSL": false,
  "ProdDatabase": {
    "host": "127.0.0.1",
    "user": "root",
    "password": "",
    "database": "APIMYSQL",
    "debug": false,
    "waitForConnections": true,
    "multipleStatements": true,
    "connectionLimit": 1000,
    "maxIdle": 10,
    "idleTimeout": 60000,
    "queueLimit": 0
  },
  "DevDatabase": {
    "host": "127.0.0.1",
    "user": "root",
    "password": "",
    "database": "APIMYSQL",
    "debug": false,
    "waitForConnections": true,
    "multipleStatements": true,
    "connectionLimit": 100000,
    "maxIdle": 10,
    "idleTimeout": 60000,
    "queueLimit": 0
  }
}

```

Replace credentials and database names as required.

##  Install Dependencies

npm i

## Run in Development Mode
npm run dev

Access your app at:
http://127.0.0.1:4000

## Build for Production

npm run build

Resources Included
Postman collection for API testing

Database schema file inside the project structure
