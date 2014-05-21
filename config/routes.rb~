Cgpicalc::Application.routes.draw do
	   root to: 'grades#new'
	   resources :grades
	   resources :users
	   resources :usersheets

	   resources :user_sessions, only: [:new, :create, :destroy]

	   get 'login' => 'user_sessions#new'
	   get 'logout' => 'user_sessions#destroy'
	   get 'about' => 'grade#about'

end
