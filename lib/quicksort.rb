class Array

  require 'pry'
  
  def quick_sort
    smaller = []
    larger = []

    # choose middle number in array, store as pivot
    pivot_index = (self.length/2).to_i
    pivot = self[pivot_index]
    self.delete_at(pivot_index)
    # iterate over the rest of the list
    for i in 0..self.length - 1
      # if number is smaller than pivot add to smaller list
      if self[i] >= pivot
        larger << self[i] 
      # if number i bigger than pivot, add to bigger list
      else
        smaller << self[i]
      end
    end


    if smaller.length > 1
      small = smaller.quick_sort
    else
      small = [smaller]
    end

    if larger.length > 1
      large = larger.quick_sort
    else
      large = [larger]
    end

    sorted_array = (small + [pivot] + large).flatten
    sorted_array
  end

end

array = [1,7,2,4,10,31,12]
array.quick_sort
