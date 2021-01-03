def autocomplete(input, dictionary)
  matched_words = []
  
  dictionary.each do |word|
    if matched_words.size == 5
      break
    elsif word.downcase.start_with?(input)
      matched_words << word
    end
  end
  
  matched_words
  
  #dictionary.select do |word|
  #  if matched_words == 5
  #    break "testing"
  #  elsif word.start_with?(input)
  #    matched_words += 1
  #    word 
  #  end
  #  #loops += 1
  #  #word if word.start_with?(input)
  #end
end

puts autocomplete('ai', ['airplane','airport','apple','ball'])

puts "\n"

dictionary = [ 'abnormal',
  'arm-wrestling',
  'absolute',
  'airplane',
  'airport',
  'amazing',
  'apple',
  'ball' ]

puts autocomplete('a', dictionary)