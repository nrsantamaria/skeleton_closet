# Skeletons in Your Closet

#### _Sara Schultz_ and _Nicky Santamaria_

## Description

An app to hide your skeletons.

## Technologies used / Prerequisites

* [Ruby](https://www.ruby-lang.org/en/downloads/)
* [Rails](http://rubyonrails.org/)
* [PostgreSQL](https://www.postgresql.org/docs/9.2/static/app-psql.html)
* [Git](https://git-scm.com/)

## Installation

* `$ git clone https://github.com/nrsantamaria/skeleton_closet`
* `$ cd skeleton_closet`

## PostgreSQL Integration
* `$ postgres`
* `$ rake db:create`
* `$ rake db:migrate db:test:prepare`

## Seed database
* `$ rake db:seed`

## Development server

Run `rails s` for a dev server. Navigate to `http://localhost:3000/`. The app will automatically reload if you change any of the source files.

## Specifications

| Behavior |  Input   |  Output  |
|----------|:--------:|:--------:|
|One-to-many database relationship. |User adds a skeleton to a closet.|Skeleton is listed under a specific closet.|
|User adds a skeleton to a closet.|Closet => 'Dread', New Skeleton => Name: 'Darkness', Body => 'I left the milk out last night.', Hide => 'false', Image => 'rotten_milk.jpg'| Name: Darkness |
|User hides skeleton|Name:Darkness Hide: true|Hidden in Closet, Name: Darkness|
|Admin user deletes image| Name: Picture, Delete Image|User is taken to profile|
|Validates all fields are filled out.|Validate: name, body, file|If body blank => Error: Must fill out description|

## Known Bugs
* N/A

## License

*This software is licensed under MIT license.*

```
Copyright (c) 2017 Sara Schultz, Nicky Santamaria
```
