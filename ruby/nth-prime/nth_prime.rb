class Prime
  
  def self.nth(number)
  	raise ArgumentError if number.zero?
    array =[2]
    i = 1
    until array.length == number do 
      i = i+2
      
      x = (i/2) + 1
      x.to_i
      while (x > 1) do  
        if i % x == 0
          break
        else
          x = x - 1 
          array.push(i) if x == 1  
        end
      end
    end
    array.last
  end
  
end