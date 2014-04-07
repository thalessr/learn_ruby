class Book 
	def title=(title)
		@title = title
	end

	def title
		result = ""
		not_capitalize = ["the","and","over","in","of","a", "an"]
       @title.split.map.with_index do |word, index| 
       	 if(not_capitalize.include?(word) && index > 0)
       	 	result += " "+ word
       	 else
		   result +=" "+ word.capitalize
		  end
	    end
	    return result.strip
	end

end