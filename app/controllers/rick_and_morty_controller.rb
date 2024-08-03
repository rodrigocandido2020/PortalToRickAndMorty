class RickAndMortyController < ApplicationController
  before_action :set_rinck_and_morty_service
  def index
    @list = @rick_and_morty_service.get_characters
  end

  private
  
  def set_rinck_and_morty_service
    @rick_and_morty_service = RickAndMortyService.new
  end
end
