class WelcomeController < ApplicationController
  def index
    #this is the action for home page(first page)
    #retrieving the flat information for current user
    @flats=current_user.flats if current_user
  end
end
