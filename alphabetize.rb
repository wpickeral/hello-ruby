def alphabetize(arr, rev=false)

  if rev
    arr.sort.reverse
  else
    arr.sort
  end

end

numbers = [1,2,3,4,5]

result = alphabetize(numbers, true)

puts result
