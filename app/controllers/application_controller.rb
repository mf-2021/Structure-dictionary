class ApplicationController < ActionController::Base
  # ログイン後、adminのトップ画面に遷移
  def after_sign_in_path_for(resource)
    admin_path(resource)
  end

  # ログアウト後、adminのログイン画面に遷移
  def after_sign_out_path_for(resource)
    new_admin_session_path(resource)
  end
end
