# Models

## Recipe 
### Table
    name 
    instructions
    Ingredients
### Class
    belongs_to :user
    belongs_to :category
    has_many :comments
    has_many :users, through: :comments

## User
### Table
    has_secure_password
    name
    email
    password_digest
### Class
    has_many :recipes
    has_many :comments
    has_many :commented_recipes, through: :comments
    has_many :categories, through: :recipes

## Comment
### Table  
    content
    user_id
    recipe_id 
### Class
    belongs_to :user
    belongs_to :recipe

## Categories
### Table 
    name
### Class
    has_many :posts

### Tips
    -rails c -s = rails console sandbox, doesnt save to database
    -Write custom routes above resource routes (resources :comments) otherwise it will run resource routes first.
    -Helpers folder is where you add helpers that will only pertain to the views of that subfolder. if you have helpers there and want to include them in controllers you can say include ApplicationHelper for example. I am keeping my helper in the application controller becuase they will be used alot in my controllers as well as in the views.
