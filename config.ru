require './config/environment'

use Rack::MethodOverride
use ListsController 
use TasksController  
use UsersController   
run ApplicationController
