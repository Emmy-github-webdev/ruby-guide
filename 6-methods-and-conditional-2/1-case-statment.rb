def rate_my_food(food)
  case food
    when "Steak"
      "Pass me steak"
    when "Sushi"
      "Pass me Sushi"
    when "Tofu"
      "Pass me Tofu"
    else 
      "I don't know about that food!"
  end
end

p rate_my_food("Tofu")


def calculate_grade(grade)
  case grade
    when 90..100 then "A"
    when 80..89 then "B"
    when 70..79 then "C"
    when 60..69 then "D"
    else "F"
  end
end

p calculate_grade(78)