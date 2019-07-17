# README
To run this application you just have to run this:

```
rake db:create 
rake db:migrate
rails s -b 0.0.0.0
```
Voila! then you can access it on http://localhost:3000

Opps! You must login to store_catalog.

```
username; matsuda
password; matsuda
```

# Steps executed when building this application

```
gem install rails
rails g controller books index
rails g controller authors index
rails g controller sessions index
rails g controller users index
```
