require 'prime'

class Raindrops
  VERSION = 1
  RAINDROPS = { 3 => 'Pling', 5 => 'Plang', 7 => 'Plong' }.freeze

  def self.convert(n)
    factors = factorization([], n).uniq
    raindrops = factors.map { |f| RAINDROPS[f] }.compact
    raindrops.empty? ? n.to_s : raindrops.join
  end

  # TODO: try functional since recursivity is very old-fashion
  def self.factorization(factors, number)
    Prime.each do |prime|
      break factors if prime > number
      break factorization factors << prime, number / prime if number % prime == 0
    end
  end
end
