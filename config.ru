require './config/environment'

if ActiveRecord::Base.connection.migration_context.needs_migration?
  raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
end

ActiveRecord::Base.establish_connection(ENV['DATABASE_URL'] || 'postgres://localhost/mydb')


# a Rack module for handling browser-unsupported HTTP verbs in web applications
use Rack::MethodOverride

use UsersController
use WinesController
run ApplicationController

run Sinatra::Application
