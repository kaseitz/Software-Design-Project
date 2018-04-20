# coordinates_validator.rb
# @Author: Ricky Davidson
# @E-Mail: rwdavidsonjr@yahoo.com
# @Date:   2018-04-17 19:21:17
# @Last Modified time: 2018-04-20 04:35:24

# Used to validate a value coordinates in TermPopularity
# Does not assume TermPopularity as the name of the class.
class CoordinatesValidator < ActiveModel::Validator
  # Validates coordinates parameter
  # 
  #
  # ==== Attributes
  #
  # * +record+ - ActiveRecord object used with :validates_with
  #
  # ==== Examples
  # 
  # http://guides.rubyonrails.org/active_record_validations.html
  # 
  # Inside TermPopularity:
  #
  #    validates_with CoordinatesValidator, fields: [:coordinates] 
  # 
  def validate record
    # coordinates_validator.rb
    if not record.coordinates
      puts "No coordinates given for keyword: #{record.keyword}"
      return nil

    else
      # Ensure record's coordinates is an array
      if not record.coordinates.is_a? Array 
        record.errors[:base] << "Coordinates is a " +
          "#{record.coordinates.class}. Should be an array of arrays of " +
          "length 2."
        return nil
      end

      # Check each tweet's coordinates given for constraints
      record.coordinates.each do |tweet_coordinates|
        # Must be arrays
        if not tweet_coordinates.is_a? Array
          record.errors[:base] << "Coordinates has a " +
            "#{tweet_coordinates.class}. Should be an array of length 2."
          return nil
        end

        # Must be arrays of length 2
        if not tweet_coordinates.length == 2
          record.errors[:base] << "Coordinates has an array of length" +
            "#{tweet_coordinates.length}. Should be an array of length 2."
          return nil
        end

        # Must be arrays of numbers
        tweet_coordinates.each do |tweet_coordinate|
          if not tweet_coordinate.is_a? Numeric
            record.errors[:base] << "Coordinate of class " +
              "#{tweet_coordinate.class}. Should be an a numeric class."
            return nil
          end
        end
      end
    end
  end
end

