Rails.application.routes.draw do
  get 'maps/index'
  # 管理者側
  scope module: :admin do
    devise_for :admins
    get "/admin" => "homes#top"
    resources :genres, only: [:index, :create, :edit, :update]
  end

  # ユーザー側
  scope module: :public do
    # ユーザー登録
    devise_for :users

    # トップ・アバウト画面
    get "/" => "homes#top"
    get "/about" => "homes#about"

    # 執筆者
    resources :writers, except: [:new, :create, :destroy] do
      collection do
        get :unsubscribe
        patch :withdraw
      end
    end

    # 執筆
    resources :writings

    # 構造物
    resources :structures, except: [:new, :create]

  end

end
