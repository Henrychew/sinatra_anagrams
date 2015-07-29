file = File.open("words") do |f|
	f.each_line do |line|
		Word.create(dictionary: line.chomp , anagram: line.chomp.downcase.chars.sort.join)
	end
end