require_relative 'character_map'

class Encrypt

  def initialize
    @character_map = CharacterMap.new
    @a_rotation = @character_map.calc_total_rotation_a
    @b_rotation = @character_map.calc_total_rotation_b
    @c_rotation = @character_map.calc_total_rotation_c
    @d_rotation = @character_map.calc_total_rotation_d
    @alphabet = @character_map.lower_case_alphabet
  end

  def a_cycle
    @alphabet.cycle(@a_rotation)
  end

  def b_cycle
    @alphabet.cycle(@b_rotation)
  end

  def c_cycle
    @alphabet.cycle(@c_rotaiton)
  end

  def d_cycle
    @alphabet.cycle(@d_rotation)
  end


  # def encryption_alphabet
  #   {
  #     "a" => a_cycle
  #     "b" => @alphabet.cycle(@b_rotation)
  #     "c" => @alphabet.cycle(@c_rotaiton)
  #     "d" => @alphabet.cycle(@d_rotation)
  #     "e" => @alphabet.cycle(@a_rotation)
  #     "f" => @alphabet.cycle(@b_rotation)
  #     "g" => @alphabet.cycle(@c_rotaiton)
  #     "h" => @alphabet.cycle(@d_rotation)
  #     "i" => @alphabet.cycle(@a_rotation)
  #     "j" => @alphabet.cycle(@b_rotation)
  #     "k" => @alphabet.cycle(@c_rotaiton)
  #     "l" => @alphabet.cycle(@d_rotation)
  #     "m" => @alphabet.cycle(@a_rotation)
  #     "n" => @alphabet.cycle(@b_rotation)
  #     "o" => @alphabet.cycle(@c_rotaiton)
  #     "p" => @alphabet.cycle(@d_rotation)
  #     "q" => @alphabet.cycle(@a_rotation)
  #     "r" => @alphabet.cycle(@b_rotation)
  #     "s" => @alphabet.cycle(@c_rotaiton)
  #     "t" => @alphabet.cycle(@d_rotation)
  #     "u" => @alphabet.cycle(@a_rotation)
  #     "v" => @alphabet.cycle(@b_rotation)
  #     "w" => @alphabet.cycle(@c_rotaiton)
  #     "x" => @alphabet.cycle(@d_rotation)
  #     "y" => @alphabet.cycle(@a_rotation)
  #     "z" => @alphabet.cycle(@b_rotation)
  #   }
  # end

end

e = Encrypt.new

e.a_cycle
