# For tutorial purpose
- https://guides.rubyonrails.org/getting_started.html#creating-the-blog-application
---
- ruby 2.7.2
- rails 6.0.3.4
- node v10.21.0
- yarn 1.22.
---
# Lesson 1
## Welcome controller - (welcome page)
1. `rails generate controller Welcome index`
   - Creates Welcome controller with action index
   - **MOST IMPORTANT FILES** that were generated:
      - Controller: app/controllers/welcome_controller.rb
      - View: app/views/welcome/index.html.erb
      - Routes: config/routes.rb – (This file already exists, but we need to configure it)
      - ```
        A controller's purpose is to receive specific requests for the application. Routing decides which controller receives which requests. Often, there is more than one route to each controller, and different routes can be served by different actions. Each action's purpose is to collect information to provide it to a view.

        A view's purpose is to display this information in a human readable format. An important distinction to make is that it is the controller, not the view, where information is collected. The view should just display that information. By default, view templates are written in a language called eRuby (Embedded Ruby) which is processed by the request cycle in Rails before being sent to the user.

---
## First Resource - Article
- **Goal** - Create, Read, Update, Deastroy and List articles.

1. Declaring resources as roots
   - Add `articles` as resources to `config/routes` (see commit history)
   - ```
            Prefix Verb   URI Pattern                  Controller#Action
     welcome_index GET    /welcome/index(.:format)     welcome#index
          articles GET    /articles(.:format)          articles#index
                  POST   /articles(.:format)          articles#create
       new_article GET    /articles/new(.:format)      articles#new
      edit_article GET    /articles/:id/edit(.:format) articles#edit
           article GET    /articles/:id(.:format)      articles#show
                   PATCH  /articles/:id(.:format)      articles#update
                   PUT    /articles/:id(.:format)      articles#update
                   DELETE /articles/:id(.:format)      articles#destroy
              root GET    /                            welcome#index

1. Creating Controller
    - `rails generate controller Articles`
       - creates empty controller
    - If you refresh http://localhost:3000/articles/new now, you'll get a new error
      - Uknown Action - action new could not be found for ArticlesController
      - So lets create our action

1. Create `new` action
    - add action to controller
        - `app/controllers/articles_controller.rb` 
    - Create **new** form
      - define view, which should be displayed when action `new` is triggered
        - `app/views/articles/new.html.erb`
      - `http://localhost:3000/articles/new`
    - The action for creating the article wont work. But **why**?
       - Because we did not defined the **create** action!