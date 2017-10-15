require 'pry'

class KeyGenerator

  attr_reader :key

  def initialize
    @key = create_key
  end

  def create_key
    5.times.map{Random.rand(10)}
  #num = 41521
  end

  def calc_a_rotation
     @key[0..1].join.to_i
  end

  def calc_b_rotation
    @key[1..2].join.to_i
  end

  def calc_c_rotation
    @key[2..3].join.to_i
  end

  def calc_d_rotation
    @key[3..4].join.to_i
  end

end
