# prices = [53] Only one date entered
# prices = [12,3,15,22,14,17,1] #lowest is last day
# prices = [55,11,13,11,18,5,11,22]  #highest first day. 
# prices = [17,3,6,9,15,8,6,1,10] #Exercise Example



def stock_picker (prices)
	if prices.length <= 1
		puts "Please enter 2 or more prices"
		return nil
end
	if prices.max == prices[0] then prices.slice!(0) end
	if prices.min == prices[-1] then prices.slice!(prices[-1]) end
	if prices.length <= 1
		puts "No suitable strategy can be formulated at this time."
		return nil
	else
		max = prices.index(prices.max)
		min = (prices[0..max]).index((prices[0..max]).min)

		puts "#{[prices[min],prices[max]]} for a profit of $#{prices[max] - prices[min]}"
		picks = [prices[min],prices[max]]
	end
end

stock_picker(prices)