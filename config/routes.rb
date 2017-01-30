Rails.application.routes.draw do
  namespace :admin do
    namespace :blog do
      resources :posts
    end
  end

  get 'blog/:year/:month/:day/:id', to: 'blog/posts#show',
    constraints: { year: /\d{4}/, month: /\d{1,2}/, day: /\d{2}/ },
    as: :blog_post

  root to: 'admin/blog/posts#index'
end
