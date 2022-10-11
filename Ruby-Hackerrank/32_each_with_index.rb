def skip_animals(animals, skip)
  # Your code here
    result = []
    animals.each_with_index {|animal, anIndex| result.push("#{anIndex}:#{animal}") if anIndex >= skip}
    return result
end