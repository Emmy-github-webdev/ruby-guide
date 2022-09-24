def serial_average(string)
  string = string("-")
  return "#{string[0]}-#{((string[1].to_f + string[2].to_f)/2).round(2)}"
end