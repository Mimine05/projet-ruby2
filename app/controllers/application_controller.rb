class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    before_action :configure_permitted_parameters, if: :devise_controller?

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up) do |user_params|
            user_params.permit( :username, :email, :password, :password_confirmation)
        end
        devise_parameter_sanitizer.permit(:sign_in) do |user_params|
            user_params.permit( :username, :email, :password, :password_confirmation)
        end
        devise_parameter_sanitizer.permit(:account_update) do |user_params|
            user_params.permit( :username, :email, :password, :password_confirmation)
        end
    end

    protected

    def configure_permitted_parameters
        added_attrs = [:username, :email, :password, :password_confirmation, :remember_me]
        devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
        devise_parameter_sanitizer.permit :account_update, keys: added_attrs
    end
end
