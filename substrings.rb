def substrings(text, dictionary)

  lower_text = text.downcase
  hash = {}

  dictionary.each do |word|
    matches = lower_text.scan(word).length
    hash[word] = matches unless matches == 0
  end

  hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)