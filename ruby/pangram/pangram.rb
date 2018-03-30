module Pangram
  VERSION = 1

  def self.is_pangram?(sentence)
    (('a'..'z').to_a - sentence.downcase.chars).empty?
  end
end
