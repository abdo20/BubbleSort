# take a list return order list using bubble sort method

def main(arr)
  sorted=false           # assume the list is unsorted
  unorder_items_length=arr.length       # assume their's no item in the list in the right index
  while !sorted          # check if the list is sorted
    sorted=true          # assume the list will be sorted in this loop
    (0...unorder_items_length-1).each do |index|      # iterate through every index expect the last
      if arr[index] > arr[index+1]  #compare the item in the current index with the item in the next index
        sorted=false      #if the if statement occur then the list still need to go through the loop again
        arr[index], arr[index+1]=arr[index+1], arr[index]  
      end
    end
    unorder_items_length-=1       #the last item will be certainly in the right index each loop
  end
  return arr
end

p main([4,3,78,2,0,2])

