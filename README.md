# Ryde-Server for Urbandoor.co

### Getting Started

## Setting Up Postgresql
`psql`  
`CREATE ROLE ryde_admin`  
`ALTER ROLE ryde_admin WITH LOGIN CREATEDB REPLICATION SUPERUSER;`  
'\q'
`rake db:migrate`  
`rake db:setup`  

## Setting Up The Server

`bundle install`  
`rake db:setup db:migrate`  

## Running The Server
Run `rails s -p [port#]` to start the server.