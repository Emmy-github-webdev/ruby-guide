def scoring(array)
  # iterate through each of the element in array using *each* and call update_score on it
  array.each do |score|
      score.update_score
  end
end