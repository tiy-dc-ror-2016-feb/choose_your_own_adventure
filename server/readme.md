# New Things
  1. Database config
  2. Databases are not just created `rake db:create`
  2. Migrations vis `rake db:migrate`
  3. Torch db via `rake db:drop`

## Must have Locally

1. `brew install postgres`
**Follow instructions to setup first db**


## Deploying to heroku

1. Ensure you have heroku toolbelt
2. Run `heroku create`
3. Run `heroku addons:create heroku-postgresql:hobby-dev` to add a postgres DB server
3. Run `heroku run "cd server; rake db:migrate"` to migrate your servers database
