def mask_article(string, words)
  words.map do |word|
      string.gsub!(word, strike(word)) if string.include?(word)
  end
   string
end

def strike(str)
   "<strike>#{str}</strike>"
end
