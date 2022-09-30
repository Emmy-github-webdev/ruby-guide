# Your code here
def convert_temp(temp, **options)
  if options[:input_scale] == options[:output_scale]
      return temp
  end
  
  celsius_to_kelvin = -> (temp){return ( temp + 273.15) }
  celsius_to_fahrenheit = -> (temp) {return ((temp * 1.8) + 32)}
  kelvin_to_celsius = -> (temp) {return (temp - 273.15)}
  fahrenheit_to_celsius = -> (temp) {return ((temp - 32) / 1.8)} 
  
  new_temp = temp
  
  case options[:input_scale]
      when "kelvin"
      new_temp = kelvin_to_celsius.(new_temp)
      when "fahrenheit"
      new_temp = fahrenheit_to_celsius.(new_temp)
      
  end
  
  case options[:output_scale]
      when "kelvin"
      new_temp = celsius_to_kelvin.(new_temp)
      when "fahrenheit"
      new_temp = celsius_to_fahrenheit.(new_temp)
  end
  
  return new_temp
end