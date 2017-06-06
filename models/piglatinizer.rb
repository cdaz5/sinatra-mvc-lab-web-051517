require 'pry'
class PigLatinizer


def piglatinize(text)
  vowel = text.downcase.index(/[aeiou]/)

if vowel == 0
  text + "way"
else
  consonants = text.slice!(0..vowel - 1)
  text + consonants + "ay"
end
end

def to_pig_latin(text)
  pig_words = []
  text.split(" ").map { |word| piglatinize(word)}.join(" ")
end

end
