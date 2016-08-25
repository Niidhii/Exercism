module BookKeeping
  VERSION = 2
end	

class Raindrops
def self.convert(number)
 factor = []
 factor << 'Pling' if number % 3 == 0
 factor << 'Plang' if number % 5 == 0
 factor << 'Plong' if number % 7 == 0
 factor.empty? ? number.to_s : factor.join 
end
end

