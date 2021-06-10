class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session
  before_action :authenticate_user!
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  def after_sign_in_path_for(resource)
    "/rooms"
  end
  def after_sign_out_path_for(resource)
    new_user_session_path
  end
# カラム追加したので
# ↓これを追加↓
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:user_name, :color, :img])
      devise_parameter_sanitizer.permit(:account_update, keys: [:user_name, :color, :img])
    end
# ↑ここまで↑

def self.render_with_signed_in_user(user, *args)
  ActionController::Renderer::RACK_KEY_TRANSLATION['warden'] ||= 'warden'
  proxy = Warden::Proxy.new({}, Warden::Manager.new({})).tap{|i| i.set_user(user, scope: :user) }
  renderer = self.renderer.new('warden' => proxy)
  renderer.render(*args)
end

end
