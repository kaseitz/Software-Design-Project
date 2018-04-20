# term_popularities_helper.rb
# @Author: Ricky Davidson
# @E-Mail: rwdavidsonjr@yahoo.com
# @Date:   2018-04-20 03:19:18
# @Last Modified time: 2018-04-20 04:44:13

module TermPopularitiesHelper
  # Verifies bare minimum coordinates structure when displaying coordinates
  #
  # ==== Attributes
  # 
  # * +coordinates+ - a coordinates attributes from a TermPopularity table 
  #                   entry
  # 
  def verify_coordinates coordinates
    if coordinates.class == Array and
        coordinates[0].class == Array and
        coordinates[0][0].is_a? Numeric
      return "Correct"
    else
      return coordinates
    end
  end
end

