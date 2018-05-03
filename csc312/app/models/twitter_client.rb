# twitter_client.rb
# @Author: Unknown
# @E-Mail: na@mail.com
# @Date:   2018-04-22 21:11:25
# @Last Modified time: 2018-05-01 10:25:03
# class TwitterClient < ApplicationRecord TODO: UNCOMMENT
class TwitterClient
  include HTTParty



  hostport = ENV['TWIITER_PORT'] || 'https://ads-api.twitter.com'

  base_uri "#{hostport}/3/insights/keywords"
  # basic_auth TODO: AUTHENTIC

  format:json


  def self.for term
    date = Time.new
    date = "#{date.year}-#{date.month}-#{date.day}T00:00:00Z"

    parameters = {
      granularity: 'DAY',
      start_time: date,
      keywords: term
    }

    response = get('/search', query: parameters)
  end


end
