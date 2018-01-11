Rails.application.routes.draw do


  get 'home/index'

  get "/pages/:page" => "pages#show"
  get "/logout" => "pages#logout"


  # Auth0
  get "/auth/oauth2/callback" => "auth0#callback"
  get "/auth/failure" => "auth0#failure"

  # BoController
  resources :bo_events,
            :categories,
            :partners,
            :prize_contents,
            :bo_challenges,
            :bo_prizes

  namespace :backoffice do
    resources :partners
  end

  namespace :api, defaults: {format: :json} do
    resources :challenges,
              :users,
              :styles,
              :followings,
              :wows,
              :comments,
              :rankings,
              :deals,
              :teams,
              :memberships,
              :team_requests
  end

end
