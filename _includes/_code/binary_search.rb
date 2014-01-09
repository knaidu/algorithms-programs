def binary_search(arr, key)
  raise ArgumentError, 'Empty array provided' if arr.empty?
  return binary_search_recursive(arr, 0, arr.size, key)
end

def binary_search_recursive(arr, low, high, key)
  return -1 if low >= high

  mid = (low+high)/2
  if key == arr[mid]
    return mid
  elsif key < arr[mid]
    return binary_search_recursive(arr, low, mid-1, key)
  else
    return binary_search_recursive(arr, mid+1, high, key)
  end
end

def binary_search_iterative(arr, key)
  low = 0
  high = arr.size

  while low < high do
    mid = (low + high)/2
    if key == arr[mid]
      return mid
    elsif key < arr[mid]
      high = mid - 1
    else
      low = mid + 1
    end
  end

  return -1;
end