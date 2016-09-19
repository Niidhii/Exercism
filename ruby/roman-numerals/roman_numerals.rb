# Monkey patching Fixnum
class Fixnum
  def to_roman
    lookup = { 1000 => 'M', 900 => 'CM', 500 => 'D', 400 => 'CD', 100 => 'C',
               90 => 'XC', 50 => 'L', 40 => 'XL', 10 => 'X', 9 => 'IX',
               5 => 'V', 4 => 'IV', 1 => 'I' }
    number = self
    result = []
    return result = lookup[number] if lookup.has_key?(number)
    while number > 0
       lookup.each do |key,value|
       if key <= number
        result << value
        number = number - key
        break
       end
      end
    end
    result.join('').to_s
  end
end

module BookKeeping
 VERSION = 2 # Where the version number matches the one in the test.
end
