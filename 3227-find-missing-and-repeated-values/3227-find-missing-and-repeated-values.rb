# @param {Integer[][]} grid
# @return {Integer[]}
def find_missing_and_repeated_values(grid)
    n = grid.length 

    freq = grid.flatten.tally 

    a = nil 
    b = nil 

    (1..(n*n)).each do |i|
        if freq.has_key?(i) and freq[i] == 2
            a = i 
        end 

        b = i if !freq.has_key?(i)
    end 

    return [a, b]
end