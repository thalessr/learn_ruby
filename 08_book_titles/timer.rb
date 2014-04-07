class Timer

	def initialize
		@seconds = 0
	end

	def seconds=(seconds)
		@seconds = seconds
	end

	def seconds
		@seconds
	end

	def time_string
		hours = @seconds / 3600
	    minutes = (@seconds % 3600) / 60
	    seconds = (@seconds % 60)
	    padded(hours)+":"+padded(minutes)+":"+padded(seconds)
	end

	def padded(number)
		number.to_s.rjust(2,'0')
	end
end