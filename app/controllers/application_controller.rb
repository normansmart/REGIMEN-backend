class ApplicationController < ActionController::API
 
  include ActionController::Cookies
  include ActionController::MimeResponds

    # protect_from_forgery with: :null_session

    # protected

    def verified_request?
      super || form_authenticity_token == request.headers['X-XSRF-TOKEN']
    end

   
end
