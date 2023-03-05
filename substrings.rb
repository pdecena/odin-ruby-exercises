# A method that takes a string and finds how many occurences of a word in a given dictionary occur in the provided string

dictionary = ["be", "a", "of", "and", "in", "to", "have", "too", "it", "I", "that",
  "below","down","go","going","horn","how","howdy","low","own","part","partner","sit", "am"
]

def substring(input_string, dictionary)
  result_hash = {}
	words = input_string.split
  words.each do |word|
    dictionary.each do |dictentry|
      if word.downcase == dictentry.downcase
        if result_hash[word] == nil
          result_hash[word] = 1
        else
          result_hash[word] += 1
        end
      end
    end
  end
  result_hash
end

hash = substring("I of IT",dictionary)
puts hash