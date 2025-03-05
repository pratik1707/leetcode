# @param {Integer} n
# @return {Integer}
def colored_cells(n)
    # 1 => 1
    # 2 => 5
    # 3 => 
    return 1 if n == 1
    table = Array.new(n+1)
    table[0] = 1

    for i in (1...n) do 
        table[i] = table[i-1] + 4*i
    end 

    return table[n-1]
end