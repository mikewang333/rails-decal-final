module DevisePermittedParameters
  extend ActiveSupport::Concern

  included do
    before_filter :configure_permitted_parameters
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:age])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:location])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:age])
    devise_parameter_sanitizer.permit(:account_update, keys: [:location])
  end

end

DeviseController.send :include, DevisePermittedParameters