class PigLatinConverter

  def self.convert(string)
    char_array = string.split("")
    pig_latinated = convert_word(char_array)
    #pig_latinated = char_array.map {|word| convert_word(word)}
    pig_latinated.join("")
  end

  def self.convert_word(word)
    vowels = ["a", "e", "i", "o", "u"]
    first_letter = word[0]
    return word.append("way") if vowels.include?(first_letter.downcase)

    consonants = []
    vowel_index = 0
    word.each_with_index do |char, index|
      if vowels.include?(char)
        vowel_index = index
        break
      end
    end
      index = 0
      while index < vowel_index do
        consonants.append(word[index])
        index += 1
      end
      word[consonants.length..-1] + consonants + ["ay"]
  end

end

puts PigLatinConverter.convert("James")