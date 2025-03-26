# @param {Integer[][]} grid
# @return {Integer}
def oranges_rotting(grid)    
    
    @m = grid.length 
    @n = grid[0].length 
    @count = 0 
    @queue = Queue.new 
    #@visited = Array.new(m){Array.new(n, false)}

    for i in (0...@m) do 
        for j in (0...@n) do 
            if grid[i][j] == 2 
                @queue << [i, j]
            end 
        end 
    end 

    bfs(grid)

    for i in (0...@m) do 
        for j in (0...@n) do 
            return -1 if grid[i][j] == 1 
        end 
    end 

    return @count 
end 

def bfs(grid)   
    directions = [[-1, 0], [1, 0], [0, -1], [0, 1]]
    

    while(@queue.size > 0) do   
        flag = false               
        @queue.size.times do 
            row, col = @queue.pop 
            for r, c in directions do 
                n_row, n_col = row + r, col + c 

                if n_row >= 0 and n_row < @m and n_col >= 0 and n_col < @n and grid[n_row][n_col] == 1
                    flag = true 
                    grid[n_row][n_col] = 3
                    @queue << [n_row, n_col]
                end 
            end 
            
            
        end 
        
       @count += 1 if flag 
    end 
end 