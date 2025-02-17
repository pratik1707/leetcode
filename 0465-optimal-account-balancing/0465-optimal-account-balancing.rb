# @param {Integer[][]} transactions
# @return {Integer}
def min_transfers(transactions)
    # 1 => [0, 10]
    # 0 => [1, -5]
    # 2 => [0, -5]
    # (0 => [1, -10])
    # 1 => [0, 10]

    # 0 => -4
    # 1 => 4
    # 2 => 0

    @balance_map = Hash.new(0)
    for from, to, amount in transactions do 
        @balance_map[from] -= amount 
        @balance_map[to] += amount 
    end 

    @balance_map = @balance_map.values.select{|k, v| v != 0}

    return dfs(0, @balance_map.length)

end

def dfs(i, n)    
    while(i < n and @balance_map[i] == 0) do 
        i += 1
    end

    return 0 if i == n 

    cost = Float::INFINITY 

    for nxt in (i+1...n) do 
        if @balance_map[i] * @balance_map[nxt] < 0
            @balance_map[nxt] += @balance_map[i]
            cost = [cost, 1 + dfs(i+1, n)].min 
            @balance_map[nxt] -= @balance_map[i]
        end 
    end 

    return cost 
end 