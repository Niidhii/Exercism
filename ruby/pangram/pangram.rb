class Pangram

def self.is_pangram? (str)
return false if str.empty?
 str.downcase!
 i = 97
 result = true
 while i<123
  result = str.include?(i.chr)
  return false if !result 
  i += 1
 end
 return true
end
end 

module BookKeeping
     VERSION = 2 # Where the version number matches the one in the test.
 end