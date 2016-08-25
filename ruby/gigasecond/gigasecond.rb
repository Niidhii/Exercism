 require "rails/all"
 require "date"
 require "time"

 class Gigasecond
      
  def self.from (t)
    t += (10**9)
    return t.utc
  end

  end
