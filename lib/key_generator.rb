require 'pry'

class KeyGenerator

  attr_reader :key

  def initialize(key = nil)
    @key = key
  end

  def create_key
    @key = 5.times.map{Random.rand(10)}.to_s if key.nil?
   #num = 41521
   end

   def a_rotation
      @key[0..1].to_i
   end

   def b_rotation
     @key[1..2].to_i
   end

   def c_rotation
     @key[2..3].to_i
   end

   def d_rotation
     @key[-2..-1].to_i
   end

 end
