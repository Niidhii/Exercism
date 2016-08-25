class Complement
 def self.of_dna(dna)
 	a = dna.split('')
    b = Array.new(a.length)
    a.each_index {|i| 
    if a[i] == 'A'
 		b[i] = 'U'
     elsif a[i] == 'G'
       b[i] = 'C'
     elsif a[i] == 'T'
       b[i] = 'A'
     elsif a[i] == 'C'
       b[i] = 'G' 
     else 
       rna = '' 
       return rna 
    end
   	}
    rna = b.join
     return rna
  end
 end
 module BookKeeping
     VERSION = 4 # Where the version number matches the one in the test.
   end

 