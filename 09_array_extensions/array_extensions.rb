class Array

	def sum
		if empty?
		    0
		else
			inject{|sum,num| sum + num}
		end
	end

	def square
		unless empty?
			map{|num| num ** 2}
		else
			self
		end
	end
	def square!
	    self.map! { |num| num**2 }
    end
end