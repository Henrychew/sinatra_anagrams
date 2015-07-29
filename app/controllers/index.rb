
get '/:input' do
	key = Word.pluck(:dictionary)

	input = params[:input]

	# input = params[:input] + "/n"

	@anagram = Word.anagrams_for(input, key)

	erb :index
 end

 
# def canonical(word)
#   # Magic goes here
#   word.downcase.chars.sort.join
# end

# def is_anagram?(word1, word2)
#   canonical(word1) == canonical(word2)
# end

# def anagrams_for(input, dic)
#   array = []
#   dic.each do |word|
#       if is_anagram?(word, input) == true
#       array << word
#       end
#   end
#   array
# end


