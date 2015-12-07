# class ApplicationController < ActionController::Base
#   # Prevent CSRF attacks by raising an exception.
#   # For APIs, you may want to use :null_session instead.
#   protect_from_forgery with: :exception
# end

require 'mailchimp'

class ApplicationController < ActionController::Base

# Prevent CSRF attacks by raising an exception.
# For APIs, you may want to use :null_session instead.

protect_from_forgery with: :exception
skip_before_action :verify_authenticity_token
before_action :setup_mcapi

def setup_mcapi
  @mc = Mailchimp::API.new(Rails.application.secrets.mailchimp_api_key)
  @list_id = Rails.application.secrets.mailchimp_list_id
end

end
