class ApplicationController < ActionController::Base
  # ログインしていない場合はログイン画面に遷移する
  before_action :authenticate_user!
  before_action :configure_permitted_parameters,  if: :devise_controller?


private
def configure_permitted_parameters
  devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
end
end