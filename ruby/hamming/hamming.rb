class Hamming
  def self.compute(str1,str2)
    if (str1.length != str2.length)
      raise ArgumentError.new(true), "Argument Error"
    end

   	len = str1.length 
    a = str1.split('')
    b = str2.split('')
    dist = 0
    i = 0
    until (i == len ) do 
      if(a[i] != b[i])
        dist += 1
      end
      i += 1
    end
    attr_reader :attr_nameseturn dist
  end
end                