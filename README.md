# stock_picker

### An exercise in returning specific Ruby array values in from [The Odin Project](http://www.theodinproject.com/ruby-programming/building-blocks).  

stock_picker takes one array parameter, representing the daily prices of a stock. An array is returned with the best price to buy a stock (the minimum value) and the best price to sell a stock (the maximum value).  

prices[0] represents the first day.

"Edge cases," such as when stock price is highest on the first day or when stock price is lowest on the last day were accounted for,

Empty arrays, arrays with only one value, are also addressed.

### Expected Outputs

##### An empty array
 stock_picker([])
 
 ">> "No Data Available."

##### Only one date entered
 stock_picker([53])
 
 ">> An investment strategy could not be formulated based on the information supplied."

##### Lowest is last day.
 stock_picker([12,3,15,22,14,17,1])
 
 ">> "[1, 3] for a profit of $19"

##### Highest day first.
 stock_picker([55,11,13,11,18,11,22])
 
 ">> "[1, 6] for a profit of $11"

##### Exercise Example.
 stock_picker([17,3,6,9,15,8,6,1,10])
 
 ">> "[1, 4] for a profit of $12"

##### No apporiate time to buy.
 stock_picker([19,19,19,17,17,17])
 
 ">> "An investment strategy could not be formulated based on the information supplied."

##### Complex Array
 stock_picker([66,65,64,63,55,17,3,6,9,15,21,3,8,2,6,21,3,1,10])
 
 ">> "[13, 15] for a profit of $19" 
