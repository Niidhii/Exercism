module BookKeeping
  VERSION = 2
end

class Robot
  attr_accessor :name

  def initialize
    @name = generate_name
  end

  def generate_name
    name = ''
    name << Array.new(2){[*("A".."Z")].sample}.join
    name << Array.new(3){[*("0".."9")].sample}.join
    name
  end

  def reset
    @name = generate_name
  end
end