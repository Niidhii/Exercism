class Phrase
  def initialize(phrase)
    @phrase = phrase
  end
  def word_count
    string = @phrase.gsub(/[^A-Za-z0-9\s']/i, ' ')
    words = string.downcase.split(' ')
    hash = Hash.new
    words.each {|word|
      word = word.delete("'") if word.start_with?("'")
      if !hash.has_key?(word)
        hash[word] = 1
      else 
        hash[word] += 1
      end
    }
    hash
  end
end

module BookKeeping
  VERSION = 1
end