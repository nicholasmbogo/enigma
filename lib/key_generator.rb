require 'pry'

class KeyGenerator

  attr_reader :key_array, :key_string

  def initialize(key = nil)
    @key_array = nil
    @key_string = create_key(key)
  end

  def create_key(key)
    if key
      @key_string = key
      @key_array = key_string.chars.map do |char|
        char.to_i
      end
      #binding.pry
    else
      @key_array = 5.times.map{Random.rand(10)}
      @key_string = @key_array.map {|num| num.to_s}.join
      #binding.pry
    end
   #num = 41521
   end

   def a_rotation
      @key_array[0..1].join.to_i
   end

   def b_rotation
     @key_array[1..2].join.to_i
   end

   def c_rotation
     @key_array[2..3].join.to_i
   end

   def d_rotation
     @key_array[-2..-1].join.to_i
   end

 end
