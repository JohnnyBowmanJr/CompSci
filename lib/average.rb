class Array
  def average
    total = 0
    self.each do |num|
      total += num
    end
    total/self.length
  end

  def second_largest
    max = self.first
    second_max = self.first
    self.each do |num|
      if num > max
        second_max = max
        max = num
      elsif num > second_max
        second_max = max 
      end

      end
      total += num
    end
    total/self.length
  end
end

array = [1,2,3]
puts array.average