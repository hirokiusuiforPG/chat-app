class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  # ログインしていなかったら、ログイン画面にリダイレクトされる
  before_action :configure_permitted_parameters, if: :devise_controller?
  # もしdeviseに関するコントローラーの処理であれば動かす

  private 
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
end