# @param {Integer[]} coins
# @param {Integer} amount
# @return {Integer}
def coin_change(coins, amount)
    table = Array.new(amount+1, Float::INFINITY)
    table[0] = 0 

    for i in (1..amount) do 
        for coin in coins do 
            if i-coin >= 0
                table[i] = [table[i], 1+table[i-coin]].min 
            end 
        end 
    end 


    return (table[amount] == Float::INFINITY ? -1 : table[amount])
end