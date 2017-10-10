Rails.application.routes.draw do

  root 'main#index'

  resources :main, only: [] do
    collection do

        get 'index'

        get 'trending'

        get 'tutorials'

        get 'download'

        get 'contact'

        get 'popular'

        get 'alsoVisit'

        get 'explore'

        get 'about'

        get 'suggestions'

        get 'help'

        get 'share'
    end
  end

  resources :pdfs, only: [] do
    collection do
      get 'ruby_1'

      get 'main'

      get 'ruby'

      get 'php'
    end
  end


  resources :tutorials, only: [] do
    collection do
    get 'MainMenu'

    get 'AppleScript'

    get 'Assembly'

    get 'Bash'

    get 'Basic'

    get 'Batch'

    get 'C'

    get 'CS'

    get 'CPP'

    get 'CSS'

    get 'Dart'

    get 'Fortran'

    get 'Go'

    get 'GosuRuby'

    get 'HTML'

    get 'Java'

    get 'JS'

    get 'JadePugJS'

    get 'LiveScript'

    get 'NodeJS'

    get 'Perl'

    get 'PHP'

    get 'Python'

    get 'R'

    get 'Rust'

    get 'Ruby'

    get 'Rails'

    get 'Sass'

    get 'SmallTalk'

    get 'Unity'

    get 'Sass'

    get 'Less'
    end
  end

  get 'ruby/main'

  get 'ruby/c1p1'



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
  devise_for :users, controllers: {omniauth_callbacks: 'users/omniauth_callbacks'}

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
