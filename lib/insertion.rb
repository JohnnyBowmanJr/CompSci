require 'pry'
a = [1,8,3,2,5]
i = 1

if a[i] > a[i-1] 
  a << a[a.length - i]
  temp = a[i]
  a.delete_at(i)
  (a.length + 1 - i).times do
    #puts "Array is #{a}"
    #puts "i is #{i}"
    a[a.length - i] = a[a.length - i - 1]
    i += 1
  end
  
end



