Rails.application.routes.draw do
  namespace :api do
    get '/rubber_ducky_url' => 'pages#query_params_action'
    get '/whats_in_a_name' => 'pages#check_word'
    get '/string_guess_url' => 'pages#string_guess'
    get '/segment_guess/:number' => 'pages#segment_guess'
    post '/body_guess' => 'pages#body_guess'
  end
end
