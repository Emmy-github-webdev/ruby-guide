def count_multibyte_char(string)
  string.each_char.count  do |b|
      b.bytesize > 1
  end
end