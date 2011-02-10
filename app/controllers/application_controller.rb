class ApplicationController < ActionController::Base
  protect_from_forgery
  include Hobo::Controller::AuthenticationSupport
  before_filter :except => [:login, :forgot_password] do
     login_required unless User.count == 0
  end
end
