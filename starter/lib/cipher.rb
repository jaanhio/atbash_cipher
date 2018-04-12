class Cipher 
  def initialize
    @plain = ('a'..'z').to_a
    @cipher = @plain.reverse
  end

  def encode(str)
    str.split("").map{|letter|
      letter = @cipher[@plain.index(letter)]
    }
  end
end

encoder = Cipher.new()

puts encoder.encode("hello")