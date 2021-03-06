Rails.application.routes.draw do
  namespace :api, format: 'json' do
    scope module: :script do
      resource :image_scrayping, only: %i[update], param: :message
    end
  end
end
