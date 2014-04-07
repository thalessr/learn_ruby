class Temperature
	@hash = nil

	def initialize(hash)
		@hash = hash
	end

	def to_celsius
		if @hash.keys[0] == :c
    	   @hash[:c]
    	else
    	   ((@hash[:f].to_f - 32.0)/1.8).ceil
    	end 
	end

	def to_fahrenheit
    	if @hash.keys[0] == :f
    		@hash[:f]
    	else
    		((@hash[:c].to_f * 1.8) + 32).round(1)
    	end
    end

    def self.in_celsius(temp)
    	Temperature.new({c: temp})
    end

    def self.in_fahrenheit(temp)
    	Temperature.new({f: temp})
    end
end


class Celsius < Temperature

	def initialize(celsius)
		@hash = {c: celsius}
	end

end

class Fahrenheit < Temperature

	def initialize(fahrenheit)
		@hash = {f: fahrenheit}
	end

end

