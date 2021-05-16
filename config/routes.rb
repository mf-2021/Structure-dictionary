Rails.application.routes.draw do
  # 管理者側
  scope module: :admin do
    devise_for :admins
    get "/admin" => "homes#top"
    resources :genres, only: [:index, :create, :edit, :update]
  end

  # ユーザー側
  scope module: :public do
    devise_for :users
    get '/' => "homes#top"
    get '/about' => "homes#about"
  end

end
