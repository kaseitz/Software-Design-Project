# topic_popularity_controller.rb
# @Author: Ricky Davidson & Ryland Wheliss
# @E-Mail: rwdavidsonjr@yahoo.com
# @Date:   2018-04-20 03:47:27
# @Last Modified time: 2018-04-22 22:03:26

class TopicPopularityController < ApplicationController
  # Root page with a search bar. Shows results when provided a keyword 'q='
  def search
    # topic_popularity_controller.rb
    @search_term = params[:q] || nil
    puts @search_term

    # Find a result for a possible searched keyword
    @result = nil
    if @search_term
      @result = TopicPopularity.get_related_tweet_info(@search_term)
    end
  end

  # Lists all searched keywords and their most recent results
  def list
    old = params[:old] || '0'

    # Allow showing all keywords or distint keywords
    @results = nil
    if old == '0'
      @results = TermPopularity.order(created_at: :desc)
                               .select(:keyword)
                               .distinct
    else
      @results = TermPopularity.order(keyword: :asc)
                               .order(created_at: :desc)
    end
  end

  def map
    # TODO
  end
end

