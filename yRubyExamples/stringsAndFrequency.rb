def words_from_string(string)
  #scan receives a regular expression at this case, word characters
  #and returns an array
  string.downcase.scan(/[\w']+/)
end

def count_frecuency(word_list)
  count = Hash.new(0)
  for word in word_list
    count[word] += 1
  end
  count
end

phrase = "Aveces digo aveces por que me gusta cuando te gusta"

words = words_from_string(phrase)
p words

frequency = count_frecuency(words)
p frequency

puts "\n\n"

sorted = frequency.sort_by {|word, count| count}
top_five = sorted.last 5

top_five.each {|word, count| puts "#{word}: #{count}"}
