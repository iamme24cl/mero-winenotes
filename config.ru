require './config/environment'

if ActiveRecord::Base.connection.migration_context.needs_migration?
  raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
end



# a Rack module for handling browser-unsupported HTTP verbs in web applications
use Rack::MethodOverride

use UsersController
use WinesController
use ApplicationController

run Sinatra::Application
