# For tutorial purpose
- https://guides.rubyonrails.org/getting_started.html#creating-the-blog-application
---
- ruby 2.7.2
- rails 6.0.3.4
- node v10.21.0
- yarn 1.22.
---
# Lesson 1
### Welcome controller - (welcome page)
1. `rails generate controller Welcome index`
   - Creates Welcome controller with action index
   - **MOST IMPORTANT FILES** that were generated:
      - Controller: app/controllers/welcome_controller.rb
      - View: app/views/welcome/index.html.erb
      - Routes: config/routes.rb – (This file already exists, but we need to configure it)
      - ```
        A controller's purpose is to receive specific requests for the application. Routing decides which controller receives which requests. Often, there is more than one route to each controller, and different routes can be served by different actions. Each action's purpose is to collect information to provide it to a view.

        A view's purpose is to display this information in a human readable format. An important distinction to make is that it is the controller, not the view, where information is collected. The view should just display that information. By default, view templates are written in a language called eRuby (Embedded Ruby) which is processed by the request cycle in Rails before being sent to the user.

