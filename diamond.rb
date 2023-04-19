def count_diamonds
  expression = "<<.<<..>><>><.>.>.<<.>.<.>>>><>><>>"
  expression = expression.gsub('.', '')
  diamonds = []
  while expression =~ /<>/
    diamond = expression.match(/<>/).to_s
    diamonds << diamond
    expression.sub!(diamond, "")
  end
  puts diamonds.count
end

count_diamonds