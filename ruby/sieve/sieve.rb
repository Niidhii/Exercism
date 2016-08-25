class Sieve

def initialize (number)
@number = number
@prime = []
@range = (2..@number).to_a
end

def primes
 return @prime if @number<2
 unmarked = []
 marked = []
 @range.each do |x|
  unmarked.push(x) if !marked.include?(x)
  n = 2
  multiple = x
  while multiple <= @range.last
   multiple = x*n
   n = n+1
   marked.push(multiple)
  end
 end
  return unmarked
end

end