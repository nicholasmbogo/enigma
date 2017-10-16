class KeyGenerator

  attr_reader :key

  def initialize
    @key = create_key
  end

  def create_key
    5.times.map{Random.rand(10)}.join.to_i
  #num = 41521
  end
 end
