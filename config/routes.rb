Bestoninstant::Application.routes.draw do
  post 'pages/subscribe' => 'pages#subscribe'

  root :to => 'pages#index'
end
