# twitter_client.rb
# @Author: Unknown
# @E-Mail: na@mail.com
# @Date:   2018-04-22 21:11:25
# @Last Modified time: 2018-05-01 10:25:03
# class TwitterClient < ApplicationRecord TODO: UNCOMMENT
class TwitterClient
  include HTTParty
  # debug_output $stdout

  hostport = ENV['TWIITER_PORT'] || 'https://ads-api.twitter.com'

  base_uri("#{hostport}/3/insights/keywords")

  format:json


  def self.for term
    date = Time.new
    date = "#{date.year}-#{date.month}-#{date.day}T00:00:00Z"

    parameters = {
      granularity: 'DAY',
      start_time: date,
      keywords: term
    }

    auth = {
      email_address: ENV['WAILS_EMAIL'],
      password: ENV['WAILS_PASS']
    }
    # print base_uri

    options = {
      header: {
        Authentification: 'Basic',
        Authorization: "#{ENV['WAILS_EMAIL']}:#{ENV['WAILS_PASS']}"
      },
      query: parameters
    }

    response = get('/search', options)
    return response
  end
end