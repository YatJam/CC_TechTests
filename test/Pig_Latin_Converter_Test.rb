require 'test/unit'
require 'Pig_Latin_Converter'

class PigLatinConverterTest < Test::Unit::TestCase
  def setup
  end

  def test_first_word_starts_with_vowel
      pig_latin_vowel = "appleway"
      assert_equal pig_latin_vowel, PigLatinConverter.convert("apple")
    end

  def test_first_word_starts_with_consonant
      pig_latin_consonant = "ockblay"
      assert_equal pig_latin_consonant, PigLatinConverter.convert("block")
    end

end