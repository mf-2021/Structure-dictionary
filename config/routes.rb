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
    get "/" => "homes#top"
    get "/about" => "homes#about"
    resources :writers, only: [:index, :show, :edit, :update] do
      collection do
        get :unsubscribe
        patch :withdraw
        # get "/writers" => "writers#index"
        # get "/writers/unsubscribe" => "writers#unsubscribe"
        # patch "/writers/withdraw" => "writers#withdraw"
      end
    end
  end

end
