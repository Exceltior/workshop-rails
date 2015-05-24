# Tutorial Steps 

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
