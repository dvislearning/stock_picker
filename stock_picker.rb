#input_prices = [] #Empty Array
#input_prices = [53] #Only one date entered
#input_prices = [12,3,15,22,14,17,1] #lowest is last day
#input_prices = [55,11,13,11,18,11,22]  #highest first day. 
input_prices = [17,3,6,9,15,8,6,1,10] #Exercise Example
#input_prices = [19,19,19,17,17,17] #Set of prices where there is no apporiate time to buy.
#input_prices = [66,65,64,63,55,17,3,6,9,15,21,3,8,2,6,21,3,1,10]  #crazy array




def stock_picker (array)
	b = [] # Contains index of all valid max numbers
	palce_holder = []
	valid_max = nil
	max_finder = 0
	min = nil
	max = nil

	if array.length == 0
		puts "No Data Available."
		return nil 
	end

	if array.max == array[0]
		while array[max_finder] == (array[max_finder..array.length-1]).max
			if (array[max_finder..array.length-1]).max == array.min
				puts "An investment strategy could not be formulated based on the information supplied."
				return nil
			end
			max_finder += 1
		end
		valid_max = array[max_finder..array.length-1].max
	else 
		valid_max = array.max
	end

	#unless valid_max == array.min

	0.upto(array.length-1) do |x|
		if array[x] == valid_max
			b << x
		end
	end
	
	max = b.last

	min = array.index(array[0..max].min)
	puts "#{[min,max]} for a profit of $#{array[max] - array[min]}"
	[min,max]


end


stock_picker(input_prices)

