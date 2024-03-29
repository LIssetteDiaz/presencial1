class Morseable
  attr_reader :number
  def initialize(number)
    @number = number
  end
  def generate_hash(number)
    hash = {
      0 => '-----',
      1 => '.----',
      2 => '..---',
      3 => '...--',
      4 => '....-',
      5 => '.....',
      6 => '-....',
      7 => '--...',
      8 => '---..',
      9 => '----.'
    }
    hash.each do |k, v|
      a = ""
      if k == number
        @number = v
      end
    end
    return @number
  end
  def to_morse
    self.generate_hash(@number)
  end
end
m = Morseable.new(3)
puts m.to_morse
