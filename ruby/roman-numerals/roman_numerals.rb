class Numeric
  ROMANS = {
    1000 => 'M',
    500 => 'D',
    100 => 'C',
    50 => 'L',
    10 => 'X',
    5 => 'V',
    1 => 'I'
  }.freeze

  def to_roman
    number = self
    sign = nil
    ROMANS.map do |k, v|
      multiply = number / k
      next if multiply.zero?

      remainder = self % k

      addition = multiply < 4
      value = if addition
                v * multiply
              else
                sign
              end
      sign = v
      number = remainder
      value
    end.compact.join
  end
end
