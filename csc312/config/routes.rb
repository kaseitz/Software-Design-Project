# routes.rb
# @Author: Ricky Davidon
# @E-Mail: rwdavidsonjr@yahoo.com
# @Date:   2018-04-20 02:19:32
# @Last Modified time: 2018-04-20 04:35:22

# Routes users to controllers and actions based on provided keywords
Rails.application.routes.draw do
  # Topic Popularity actions with search secrely as home page
  root 'topic_popularity#search'
  get 'list' => 'topic_popularity#list'
  get 'map' => 'topic_popularity#map'

  # Database visialization routes; not for production
  if Rails.env.development?
    resources :term_popularities, only: [:index, :destroy]
  end
end

