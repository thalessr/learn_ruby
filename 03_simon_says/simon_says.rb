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
	not_capitalize = ["the","and","over"]
	word_array = word.split(" ")
	word_array.map do |n|
        if not_capitalize.include?(n)
        	n
        else
        	n.capitalize
        end
	end
	
end

