# 20180417211818_create_term_popularities.rb
# @Author: Ricky Davidson & Ryland Wheliss
# @Date:   2018-04-17 17:19:28
# @Last Modified time: 2018-04-20 04:28:25

# Generates TermPopularity ActiveRecord database
class CreateTermPopularities < ActiveRecord::Migration[5.1]
  # Initializes a database table
  def change
    create_table :term_popularities do |t|
      # String keyword used for dirichlet allocation
      t.string :keyword

      # Integer count of related tweets found 
      # with a default value 0
      t.integer :tweet_count, default: 0

      # Serialize to Array in model TermPopularity
      t.string :coordinates

      # Generates created_at and updated_at
      t.timestamps
    end
  end
end

