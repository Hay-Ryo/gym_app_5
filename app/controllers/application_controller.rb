class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
    "/rooms"
  end

  def after_sign_out_path_for(resource)
    new_user_session_path
  end
  
  # Devise could not find the `Warden::Proxy`...このエラー発生のため記述。念のため残す。
  def self.render_with_signed_in_user(user, *args)
    ActionController::Renderer::RACK_KEY_TRANSLATION['warden'] ||= 'warden'
    proxy = Warden::Proxy.new({}, Warden::Manager.new({})).tap{|i| i.set_user(user, scope: :user) }
    renderer = self.renderer.new('warden' => proxy)
    renderer.render(*args)
  end

  # ユーザー登録、編集の関連
protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:user_name, :color, :img])
    devise_parameter_sanitizer.permit(:account_update, keys: [:user_name, :color, :img])
  end

end
