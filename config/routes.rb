Rails.application.routes.draw do
  devise_for :admins
  get "/admin" => "homes#top"

end
