# @param {Integer} m
# @param {Integer} n
# @return {Integer}
def unique_paths(m, n)
    table = Array.new(m){Array.new(n, 0)}

    for row in (0...m) do 
        table[row][0] = 1
    end 

    for col in (0...n) do 
        table[0][col] = 1 
    end 

    for row in (1...m) do 
        for col in (1...n) do 
            table[row][col] = table[row-1][col] + table[row][col-1]
        end
    end 

    return table[m-1][n-1]
end