print 'Text?: '
text = gets.chomp

begin
  print 'Pattern?: '
  pattern = gets.chomp
  regexp = Regexp.new(pattern)
rescue RegexpError => exception
  puts "Invalid pattern: #{exception.message}"
  retry # begin から繰り返す
end

matches = text.scan(regexp)
if matches.size > 0
  puts "Matched: #{matches.join(', ')}"
else
  puts "Nothing matched."
end