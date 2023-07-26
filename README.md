# RAILS DEMO FOREST ADMIN

![HOME](https://s3-eu-west-1.amazonaws.com/blog.forestadmin.com/2021/11/FA-article-buildAdminPanel@2x.png)

* [Requirements](#Requirements)
* [Configuration](#Configuration)
* [Serving Rails](#Serving-Rails)
* [Onboard your project on Forest Admin](#Onboard-your-project-on-Forest-Admin)


# Requirements

- ruby >= 3.2

# Configuration

### gemfile
```
bundle install
```

### .env file
```
cp .env.example .env
```
This app uses sqlite3 as database, you can change it in the .env file and in the database.yml file.

### migrate & seed
```
rails db:migrate && rails db:seed
```

## Serving Rails
```
rails server
```

## Onboard your project on Forest Admin
Follow the instructions on the Forest Admin website to onboard your project
