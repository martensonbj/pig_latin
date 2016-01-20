class PigLatin

  attr_accessor :word

  def start
    loop do
    @word = get_word
      if @word == "exit"
        break
      else
        first_letter(@word.downcase)
      end
    end
  end

  def get_word
    puts "Enter a word to translate:"
    gets.chomp
  end

  def vowels
    ["a","e","i","o","u","y"]
  end

  def first_letter(word)
    if vowels.include?(word.split('')[0])
      create_pig_latin_with_vowel
    else
      create_pig_latin_with_consonant
    end
  end

  def shifted_word
    word[1..-1]
  end

  def end_of_word
    word.split('').shift + "ay"
  end

  def create_pig_latin_with_vowel
    p word + "-way"
  end

  def create_pig_latin_with_consonant
    p shifted_word + "-" + end_of_word
    get_word
  end

end

if __FILE__ == $0
  rep = PigLatin.new
  rep.start
end
