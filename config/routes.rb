BreakfastApp::Application.routes.draw do
  
  resources :breakfasts

  root to: 'breakfasts#index'

end
