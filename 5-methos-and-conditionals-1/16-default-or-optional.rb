def make_phone_call(number, international_code = 1, area_code = 23)
  puts "Calling #{international_code}-#{area_code}-#{number}"
end

make_phone_call(1987646)
make_phone_call(76543228, 55, 987)