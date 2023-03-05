# Method that takes an array of stock prices for a given day and chooses which day is best to buy and which day is best to sell
# Conditions: Selling must occur at a day later than buying

def stock_picker(array)
	lowest = 99
	highest = 0
	buy_day = 0
	sell_day = 0
	array.each_with_index do |price,day|
		if price < lowest
			lowest = price
			buy_day = day
		end
		if day > buy_day && price > highest
			highest = price
			sell_day = day
		end
	end
	if sell_day < buy_day
		lowest = highest
		array[0..sell_day].each_with_index do |price, day|
			if price < lowest
				lowest = price
				buy_day = day
			end
		end
	end
	return [buy_day,sell_day]
end

stock_picker([17,3,6,9,15,8,6,1,10])

			