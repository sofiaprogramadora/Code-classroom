Rails.application.routes.draw do

  get 'ruby/main'

  get 'ruby/c1p1'

  get 'pdfs/ruby_1'

  get 'pdfs/main'

  get 'pdfs/ruby'

  get 'pdfs/php'

  get 'dart/index'

  get 'dart/final_test'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'rust/Main'

  get 'r/Main'

  get 'python/Main'

  get 'php/Main'

  get 'perl/Main'

  get 'node_js/Main'

  get 'live_script/Main'

  get 'pug_js/Main'

  get 'js/Main'

  get 'java/Main'

  get 'html/Main'

  get 'gosu_ruby/Main'

  get 'go/Main'

  get 'fortran/Main'

  get 'css/Main'

  get 'cpp/Main'

  get 'cs/Main'

  get 'c/Main'

  get 'batch/Main'

  get 'basic/Main'

  get 'bash/Main'

  get 'assembly/Main'

  get 'apple_script/Main'

  get 'css_tutorial/p1_1'

  get 'css_tutorial/p1_2'

  get 'css_tutorial/p1_3'

  get 'css_tutorial/p1_4'

  get 'css_tutorial/p1_5'

  get 'css_tutorial/test1'

  get 'posts/bash_9_very_useful_commands'

  get 'user_tutorials/ajax'

  resources :tutorial_maker_admins
  resources :user_tutorials
  devise_for :users

  #resources :tutorials, only: [] do
  #  collection do
  #    get 'MainMenu'
  #  end
  #end

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

  get 'posts/google_langs_post_tutorials'

  get 'pug_js/c1p1'

  get 'pug_js/test1'

  get 'pdfs/php_1'

  get 'php/test1'

  get 'r/c1p1'

  get 'r/cheatsheet'

  get 'r/test1'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
