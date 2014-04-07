def echo(msg)
	"#{msg}"
end

def shout(msg)
	"#{msg.upcase}"
end

def repeat(msg, num = 1)
	returning = ""
    
    if num == 1
    	returning = msg+" "+msg
    else
		num.times do
		  returning += " "+ msg
		end
    end
	returning.strip
end

def start_of_word(word,index)
	word[0,index]
end

def first_word(phrase)
	new_array = phrase.split(" ")
	new_array[0]
end

def titleize(word)
	result = ""
	not_capitalize = ["the","and","over"]
	word.split.map.with_index do |w,index| 
		if(not_capitalize.include?(w) && index > 0)
			result += " "+ w
		else
			result +=" "+ w.capitalize
		end
	end
	return result.strip
end

