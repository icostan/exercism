class Squares
  VERSION = 2

  def initialize(number)
    @numbers = (1..number)
  end

  def square_of_sum
    @numbers.reduce(0, &:+)**2
  end

  def sum_of_squares
    @numbers.map { |n| n**2 }.reduce 0, &:+
  end

  def difference
    square_of_sum - sum_of_squares
  end
end
