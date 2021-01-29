class ApplicationController < ActionController::Base
  before_action :athenticate_user!
end
