class KeyGenerator

  attr_reader :key

  def initialize
    @key = create_key
  end

  def create_key
    5.times.map{Random.rand(10)}.join.to_i
  #num = 41521
  end

#   def key_array
#     @key.to_s.chars.map{|num| num.to_i}
#   end
# #
#   def a_rotation
#     @key[0..1].join.to_i
#   end
#
#   def b_rotation
#     @key[1..2].join.to_i
#   end
#
#   def c_rotation
#     @key[2..3].join.to_i
#   end
#
#   def d_rotation
#     @key[-2..-1].join.to_i
#   end
 end
