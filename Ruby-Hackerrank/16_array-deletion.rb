def end_arr_delete(arr)
  # delete the element from the end of the array and return the deleted element
  delete_arr = arr.pop
  return delete_arr
end

def start_arr_delete(arr)
  # delete the element at the beginning of the array and return the deleted element
  shift_arr = arr.shift
  return shift_arr
end

def delete_at_arr(arr, index)
  # delete the element at the position #index
  arr.delete_at(index)
end

def delete_all(arr, val)
  # delete all the elements of the array where element = val
  arr.delete(val)
end