class ResultPrinter

def print_status(game)
	cls
	puts "\nСлово: " + get_word_fo_print(game.letters, game.good_letters)

	puts "Ошибки (#{game.errors}): #{game.bad_letters.join(", ")}"

	print_viselitsa(game.errors)

	if game.errors >= 7
		puts "Вы проиграли :("
	else
		if game.letters.uniq.size == game.good_letters.size
			puts "Поздравляем! Вы выиграли!\n\n"
		else	
			puts "У вас осталось попыток: " + (7-game.errors).to_s
		end	
	end	
end

def get_word_fo_print(letters, good_letters)
	result = ""

	for letters in letters do
		if good_letters.include? letters
			result += letters + " "
		else
			result += "__ "	
		end	
	end

		return result
end

	def cls
		system "clear" or system "cls"
	end

	def print_viselitsa(errors)
		case errors
		when 0
		puts "
		___________
		|/
		|
		|
		|
		|
		|
		|
		|
	 ___|__________
	  |			|				
	  "
			# нарисовать пустую виселицу
		when 1
			puts "
		________

	  "
			# +1 щшибка
		when 2
			puts "
		________
		|/	
		|	   ( )
		|		| 	
		|
		|
		|
		|
		|
	 ___|__________
	  |			 |		
	  "
	  	when 3
	  		puts "
		________
		|/	
		|	   ( )
		|	   _|_ 	 	
		|		  \	
		|
		|
		|
		|
	 ___|__________
	  |			 |		
	  "	
	when 4
			puts "
		________
		|/	
		|	   ( )
		|	   _|_ 	 	
		|	  /   \	
		|
		|
		|
		|
	 ___|__________
	  |			 |		
	  "	
	when 5
			puts "
		________
		|/	
		|	   ( )
		|	   _|_ 	 	
		|	  / | \	
		|		|	
		|
		|
		|
	 ___|__________
	  |			 |		
	  "	
	when 6
			puts "
		________
		|/	
		|	   ( )
		|	   _|_ 	 	
		|	  / | \	
		|		|	
		|	   / \	
		|	  /   \	
		|
	 ___|__________
	  |			 |		
	  "	
	when 7
			puts "
		________
		|/		| 
		|	   (_)
		|	   _|_ 	 	
		|	  / | \	
		|		|	
		|	   / \	
		|	  /   \	
		|
	 ___|__________
	  |			 |		
	  "	
	end
			# +2 ошибки
			# и т.д.		
	end		
end

