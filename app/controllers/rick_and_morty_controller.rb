class RickAndMortyController < ApplicationController
  before_action :set_rinck_and_morty_service
  def index
    @random_characters = @rick_and_morty_service.get_random_characters
  end

  def list_characters
    @characters_list = @rick_and_morty_service.get_characters
  end

  def show
    @character = @rick_and_morty_service.get_character
  end

  private
  
  def set_rinck_and_morty_service
    @rick_and_morty_service = RickAndMortyService.new(params[:page], params[:name], params[:id])
  end
end
