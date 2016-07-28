# Ryde-Server for Urbandoor.co

## Build a simple JSON API

Build a `GET /trips` API that powers the trip list view for a ride-sharing web app.

![Ryde screen shot](resources/ryde.png)

## Getting Started

### Setting Up Postgresql
`psql`  
`CREATE ROLE ryde_admin`  
`ALTER ROLE ryde_admin WITH LOGIN CREATEDB REPLICATION SUPERUSER;`  
`\q`
`rake db:migrate`  
`rake db:setup`  

### Installing Dependencies

To run this code, you must have Rails 5.0 and Ruby 2.3.1 installed. Then you just have to run: 

`bundle install`

### Setting Up The Server

`bundle install`  
`rake db:setup db:migrate db:seed`  

### Running The Server
Run `rails s -p [port#]` to start the server.