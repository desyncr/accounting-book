# Accounting book

This project contains 3 components that builds up the accounting book challenge. I describe
these 3 parts in the sections below.

The architecture is a multi-tiered, client-server and state-less:

- Simple API REST for the web-clients
- Custom, text based socket server for the core accounting component (accounts, transactions)
- Very basic frontend client

## Components

### Core

The core accouting component was built with ansi C and provides a multi-threaded socket
server listening on port 8080 (default), and provides a not-so-simple custom text protocol
for request and responses.

See protocol instructions [here](https://github.com/desyncr/accounting-book-server/tree/89227af058b0bffcff8792d50d299bca70f52638#protocol).

### API

The REST API component is a thin layer built with Sinatra micro webframework. It does support all
required operations such as retrieving account balance, perform transactions (debit, credit) and
retrieve transaction list and transaction information by id.

### Client

The web client is a base HTML/JS project which connect to the API server and renders transactions
for a given account (supports query string ?account=<account_number>).

## Usage

All projects are able to run inside a Docker container a Dockerfiles and docker-compose.yml are included
in the project for easy setup:

    $ cd path-to-project/
    $ make up
    # ...or docker-compose up

Then go to http://127.0.0.1:8000/ for the web client.

- Web client: `http://127.0.0.1:8000/`
- REST API: `http://127.0.0.1:4567`
- Core service: `http://127.0.0.1:8080/`

## Sample transactions

In order to fill up the storage with sample transactions you can use the following command:

    $ cd path-to-project
    $ make create-transactions

Note: The server must be running when launching the previous command.

Then go to the following account dashboard:

    http://127.0.0.1:8000/?account=89618263481836485756

## More

Included are 2 preview for the web frontend and Postman collection export for easily exploring the REST API.
