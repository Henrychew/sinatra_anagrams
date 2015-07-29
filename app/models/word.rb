class Word < ActiveRecord::Base

  # Returns an Array of Word objects which represent anagrams of this word
  # This can and should make calls to the database
  # Try to do it in as few calls as possible, without loading every word into memory. If you can't, that's ok.

    def self.canonical(word)
      # Magic goes here
      word.downcase.chars.sort.join
    end

    def self.is_anagram?(word1, word2)
      canonical(word1) == canonical(word2)
    end

    def self.anagrams_for(input, dic)
      array = []
      dic.each do |word|
          if is_anagram?(word, input) == true
          array << word
          end
      end
      array
    end

end