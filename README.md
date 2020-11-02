# Compose of Rails 6, pgsql and pgadmin
---
## Created by tutorial https://docs.docker.com/compose/rails/
### Prerequisities
1) [x] Create rails Dockerfile
2) [x] Create base `Gemfile` with rails version specifier
3) [x] Create empty `Gemfile.lock`
4) [x] create `entrypoint.sh` for running rails server
5) [x] Create docker-compose template
---

### Built the project
1) [ ] Initialize empty rails project - `docker-compose run --rm --no-deps web rails new . --force --database=postgresql --webpack`
   - Creates rails server with postgresql connector and webpack installation
1) [ ] On Linux or wsl
   - `sudo chown -R $USER:$USER .`
2) [ ] Build the composition - `docker-compose build`
3) [ ] Setup proper Database connection
   - edit `config/database.yml` add folowing lines
   - 
```
...
default: &default
  adapter: postgresql
  encoding: unicode
  host: db
  username: postgres
  password: password
  # For details on connection pooling, see Rails configuration guide
  # https://guides.rubyonrails.org/configuring.html#database-pooling
  pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>
...
``` 
4) [ ] Start composition - `docker-compose up`
5) [ ] Create Databases
   - `docker-compose run --rm web rake db:create` 

### Database administration
1) Open pgadmin
   - default configuration
     - port: 5454 # defined in docker-compose.yml
     - user: test@example.com # username defined in docker-compose.yml
     - password: test # password defined in docker-compose.yml
2) Connect to docker Postgre Database
   - default configuration
      - host: db # docker-compose db service
      - port: 5432
      - username: postgres # default user for pgsql
      - password: password # default password defined in docker-compose.yml




