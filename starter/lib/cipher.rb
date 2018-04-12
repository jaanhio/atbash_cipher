class Cipher 
  def initialize
    @plain = ("a".."z").to_a
    @cipher = @plain.reverse
  end

  def encode(str)
    str.split("").map{|letter|
      letter = @cipher[@plain.index(letter)]
  }.join("")
  end

  def decode(str)
    str.split("").map{|letter|
      letter = @plain[@cipher.index(letter)]
  }.join("")
  end

end

encoder = Cipher.new()

puts encoder.encode("hello")
puts encoder.decode("svool")