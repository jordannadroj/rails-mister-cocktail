# Mister Cocktail

[HandyBee](https://rails-mister-cocktail-470.herokuapp.com/) is my very first web application built on Ruby on Rails. It is a user-driven cocktail library where anyone can upload their own cocktail creations.

This web application is built on Ruby on Rails with Ruby, HTML, CSS, & Javascript

## Web Stack

* Github
* Ruby on Rails
* PostgreSQL
* Heroku


## Libraries

* Cloudinary
* PG Search
* Bootstrap
* Typed.JS


## Install

### Clone the repository

```shell
git clone git@github.com:jordannadroj/rails-mister-cocktail.git
cd project
```

### Check your Ruby version

```shell
ruby -v
```

The ouput should start with something like `ruby 2.5.1`

If not, install the right ruby version using [rbenv](https://github.com/rbenv/rbenv) (it could take a while):

```shell
rbenv install 2.5.1
```

### Install dependencies

Using [Bundler](https://github.com/bundler/bundler) and [Yarn](https://github.com/yarnpkg/yarn):

```shell
bundle && yarn
```


### Initialize the database

```shell
rails db:create db:migrate db:seed
```

### Add heroku remotes

Using [Heroku CLI](https://devcenter.heroku.com/articles/heroku-cli):

```shell
heroku git:remote -a project
heroku git:remote --remote heroku-staging -a project-staging
```

## Serve

```shell
rails s
```

## Deploy

### With Heroku pipeline (recommended)

Push to Heroku staging remote:

```shell
git push heroku-staging
```

Go to the Heroku Dashboard and [promote the app to production](https://devcenter.heroku.com/articles/pipelines) or use Heroku CLI:

```shell
heroku pipelines:promote -a project-staging
```

### Directly to production (not recommended)

Push to Heroku production remote:

```shell
git push heroku
```

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.
