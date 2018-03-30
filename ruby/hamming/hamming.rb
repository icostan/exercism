class Hamming
  VERSION = 2

  def self.compute(a, b)
    raise ArgumentError unless a.size == b.size
    a.chars.zip(b.chars).select{|p| p.first != p.last}.length
  end
end
