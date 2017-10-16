require './lib/character_map'
class Encrypt

  attr_reader :message, :rotations, :character_map

  def initialize(message, rotations)
    @message = message
    @rotations = rotations
    @character_map = CharacterMap.new
  end
end
