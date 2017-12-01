Rails.application.routes.draw do
  get 'destinations/index'

  get 'destinations/show'

  get 'destinations/new'

  get 'destinations/edit'

  get 'destinations/update'

  get 'destinations/destroy'

  get 'activities/index'

  get 'activities/show'

  get 'activities/new'

  get 'activities/edit'

  get 'activities/update'

  get 'activities/destroy'

  get 'lists/index'

  get 'lists/show'

  get 'lists/new'

  get 'lists/edit'

  get 'lists/update'

  get 'lists/destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
