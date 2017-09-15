Rails.application.routes.draw do
  resources :user_tutorials
  devise_for :users
  get 'tutorials/MainMenu'

  get 'tutorials/AppleScript'

  get 'tutorials/Assembly'

  get 'tutorials/Bash'

  get 'tutorials/Basic'

  get 'tutorials/Batch'

  get 'tutorials/C'

  get 'tutorials/CS'

  get 'tutorials/CPP'

  get 'tutorials/CSS'

  get 'tutorials/Dart'

  get 'tutorials/Fortran'

  get 'tutorials/Go'

  get 'tutorials/GosuRuby'

  get 'tutorials/HTML'

  get 'tutorials/Java'

  get 'tutorials/JS'

  get 'tutorials/JadePugJS'

  get 'tutorials/LiveScript'

  get 'tutorials/NodeJS'

  get 'tutorials/Perl'

  get 'tutorials/PHP'

  get 'tutorials/Python'

  get 'tutorials/R'

  get 'tutorials/Rust'

  get 'tutorials/Ruby'

  get 'tutorials/Rails'

  get 'tutorials/Sass'

  get 'tutorials/SmallTalk'

  get 'tutorials/Unity'

  get 'tutorials/Sass'

  get 'tutorials/Less'

  get 'main/index'

  get 'main/trending'

  get 'main/tutorials'

  get 'main/download'

  get 'main/contact'

  get 'main/popular'

  get 'main/alsoVisit'

  get 'main/explore'

  get 'main/about'

  get 'main/suggestions'

  get 'main/help'

  get 'main/share'

  root 'main#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
