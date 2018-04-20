# term_popularity.rb
# @Author: Ricky Davidson and Ryland Wheliss
# @E-Mail: rwdavidsonjr@yahoo.com
# @Date:   2018-04-16 17:37:50
# @Last Modified time: 2018-04-20 04:31:00

# Handles TermPopularity table entries before entry to 
# the ActiveRecord
class TermPopularity < ApplicationRecord
  # Coordinates is an array of length 2 arrays
  serialize :coordinates, Array
  validates_with CoordinatesValidator

  # Ensure a keyword and tweet count at minimum are
  validates :keyword, presence: true
  validates :tweet_count, presence: true
end

