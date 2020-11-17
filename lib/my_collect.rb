require 'pry'

def my_collect(array)
  if block_given?
    i = 0   # set counter to 0
    new_collect = []    # create empty array for yield collection
    while i < array.length
      new_collect << yield(array[i])    # pushed return to new array
      i += 1
    end
  else
    puts "Sorry, no block given."
  end
  new_collect   # return new array
end
