def add(first_number, second_number)
	first_number + second_number
end

def subtract(first_number, second_number)
	first_number - second_number
end

def sum(array)
	if array.length == 0
		0
	else
	array.inject{|sum,num| sum + num}
    end
end

def multiply(*numbers)
	numbers.inject{|mul,num| mul * num}
end

def factorial(number)
	if (number <= 1)
		1
	else
		number * factorial(number -1)
	end
		
end

