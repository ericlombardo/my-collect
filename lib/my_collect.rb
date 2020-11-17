require 'pry'

def my_collect(array)
  i = 0   # set counter to 0
  new_collect = []    # create empty array for yield collection
  while i < array.length
    new_collect << yield(array[i])
    i += 1
  end
  new_collect
end
