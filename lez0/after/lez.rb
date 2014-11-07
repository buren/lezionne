class Lez
  def self.fizzbuzz
    1.upto(100).map do |i|
      x  = ''
      x += 'fizz' if (i % 3).zero? 
      x += 'buzz' if (i % 5).zero?
      x.empty? ? i.to_s : x
    end.join("\n")
  end
end
