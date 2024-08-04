class RickAndMortyService
  VALOR_PADRAO = 1.freeze

  include HTTParty
  base_uri 'https://rickandmortyapi.com/api'
  
  def initialize(page, name, id)
    if page.present?
      page = page
    else
      page = VALOR_PADRAO
    end
    
    @opitons = {name: name, page: page, id: id}
  end

  def get_characters
    if @opitons[:name].present?
      self.class.get("/character?name=#{@opitons[:name]}&page=#{@opitons[:page]}")
    else
      self.class.get("/character?page=#{@opitons[:page]}")
    end
  end

  def get_character
    self.class.get("/character/#{@opitons[:id]}")
  end
end