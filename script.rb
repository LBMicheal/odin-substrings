dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
string_to_test = "Howdy partner, sit down! How's it going?"

def substrings(collection, string_for_array)
  string_array = string_into_array(string_for_array)
  string_hash = Hash.new(0)
  collection.each do |entry|
    count = 0
    string_array.each do |string|
      if string.include?(entry)
        count += 1
          string_hash[entry] = count
      end
    end
  end
  return string_hash
end

def string_into_array(string)
  new_array = string.split(" ")
  new_array.map! do |word|
    word.gsub!(/[^A-Za-z]/, '')
    word = word.downcase
  end
end

p substrings(dictionary,string_to_test)