class ApplicationController < ActionController::Base
    
    def after_sign_out_path_for(resource)
         '/hello/index'
    end
    def after_sign_in_path_for(resource)
        '/hello/login_check'
    end
  
    # deviseのコントローラを使う前に呼ばれるアクション
    before_action :configure_permitted_parameters, if: :devise_controller?
 
    private
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:u_name,:prefecture])
      devise_parameter_sanitizer.permit(:account_update, keys: [:u_name,:prefecture])
    end
end
