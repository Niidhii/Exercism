module BookKeeping
  VERSION = 2
end

# To check the givern year is Leap or not
class Year
  def self.leap?(year)
    if (year % 4).zero?
      if (year % 100).nonzero?
        true
      elsif (year % 100).zero? && (year % 400).zero?
        true
      end
    end
  end
end
