# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
    n = prices.length 

    min_price = Float::INFINITY
    max_profit = 0 

    for price in prices do 
        min_price = [price, min_price].min 
        profit = price - min_price 
        max_profit = [max_profit, profit].max 
    end 

    return max_profit
end