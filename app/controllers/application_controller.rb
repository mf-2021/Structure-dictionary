class ApplicationController < ActionController::Base
  # deviseのデータ操作を許可する設定
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  # ログイン後、管理者およびユーザーがそれぞれのトップ画面に遷移
  def after_sign_in_path_for(resource)
    case resource
    when Admin
      admin_path(resource)
    when User
      "/"
    end
  end

  # ログアウト後、管理者はログイン画面、ユーザーはトップ画面に遷移
  def after_sign_out_path_for(resource_or_scope)
    if resource_or_scope == :user
      "/"
    elsif resource_or_scope == :admin
      new_admin_session_path
    else
      "/"
    end
  end

  private

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :birth])
  end
end
