# @param {Integer} num_rows
# @return {Integer[][]}
def generate(num_rows)
    table = Array.new(num_rows){Array.new(num_rows, nil)}
    table[0][0] = 1

    for row in (1...num_rows) do 
        table[row][0] = 1
        table[row][row] = 1
    end 

    for row in (2...num_rows) do 
        prev_row = row-1     
           
        for col in (1...row) do 
            table[row][col] = table[prev_row][col-1] + table[prev_row][col]            
        end 
    end 
    
    return table.map{|a| a.compact}
end