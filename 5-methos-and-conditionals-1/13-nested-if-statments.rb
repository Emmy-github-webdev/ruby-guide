def meal_plan(time_of_week, time_of_day)
  if time_of_week == "weekday"
    if time_of_day == "breakfast"
      "Cereal"
    elsif time_of_day == "lunch"
      "Sandwich"
    elsif time_of_day == "dinner"
      "Checken Nuggets"
    end
    elsif time_of_week == "weekend"
      if time_of_day == "breakfast"
        "French Toast"
      elsif time_of_day == "lunch"
        "BBQ Checken Pizza"
      elsif time_of_day == "dinner"
        "Steak"        
      end
  end
end

p meal_plan("weekday", "dinner")
p meal_plan("weekend", "lunch")