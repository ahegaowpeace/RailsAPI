Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api, format: 'json' do
    scope module: :script do
      resource :image_scrayping, only: %i[update], param: :message
    end
  end
end
