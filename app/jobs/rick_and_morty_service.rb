class RickAndMortyService
  include HTTParty
  base_uri 'https://rickandmortyapi.com/api'
  
  def initialize
    @opitons = {}
  end

  def get_characters
    self.class.get('/character', @opitons)
  end
end