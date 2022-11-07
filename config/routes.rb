Rails.application.routes.draw do
  # verb '/path', to: 'controller#action', as: :prefix
  root to: 'flats#index'
  get '/flats/:id', to: 'flats#show', as: :flat
end

# CRUD

# read all -> index
# read one -> show
