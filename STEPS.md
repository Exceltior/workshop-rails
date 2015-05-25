# Workshop Steps 

This file contains every workshop step. 

## Step 0

Create application folder structure and initial files
```bash
$ rails new workshop-rails
```

Create database
```bash
$ cd workshop-rails
$ rake db:create db:migrate 
```

## Step 1

Create ToDo model
```bash
$ rails g model to_do title 
```

Migrate database
```bash
$ rake db:migrate
```

## Step 2

Create ToDo controller 
```bash
$ rails g controller ToDo 
```

Create ToDo CRUD views 
```
app/views/to_dos/index.html.erb
app/views/to_dos/show.html.erb
app/views/to_dos/new.html.erb
app/views/to_dos/edit.html.erb
```
