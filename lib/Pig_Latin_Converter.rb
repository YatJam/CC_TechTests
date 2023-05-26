
class PigLatinConverter

  def self.convert(string)
    char_array = string.split("")
    pig_latinated = convert_word(char_array)
    #pig_latinated = char_array.map {|word| convert_word(word)}
    pig_latinated.join("")
  end

  def self.convert_word(word)
    vowels = ["a", "e", "i", "o", "u"]
    upper_vowels = ["A", "E", "I", "O", "U"]
    first_letter = word[0]
    if vowels.include?(first_letter) || upper_vowels.include?(first_letter)
      word.append("way")
    else
      consonants = []
      word.each_with_index do |char, index|
        if vowels.include?(char)
          vowel_index = index
          break
        end
      index = 0
      while index < vowel_index do
        consonants.append(word[i])
        index += 1
      end
      "#{word[consonants.length..-1] + consonants.join + "ay"}"
      end
    end
  end

end