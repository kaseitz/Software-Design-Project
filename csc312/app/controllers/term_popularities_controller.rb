# term_popularities_controller.rb
# @Author: Ricky Davidson
# @E-Mail: rwdavidsonjr@yahoo.com
# @Date:   2018-04-17 19:45:05
# @Last Modified time: 2018-04-20 04:38:03

# Controlles actions for viewing the TermPopularity database
# Not usable in production
class TermPopularitiesController < ApplicationController
  before_action :set_term_popularity, only: [:destroy]

  # List the database entries entirely 
  def index
    @term_popularities = TermPopularity.all
  end

  # Delete an entry
  def destroy
    @term_popularity.destroy
    respond_to do |format|
      format.html { 
        redirect_to term_popularities_url, 
        notice: 'Term Popularity entry was successfully destroyed.' 
      }
      format.json { 
        head :no_content 
      }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_term_popularity
      @term_popularity = TermPopularity.find(params[:id])
    end
end

