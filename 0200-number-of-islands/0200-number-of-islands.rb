# @param {Character[][]} grid
# @return {Integer}
def num_islands(grid)
    @m = grid.length
    @n = grid[0].length 
    count = 0 
    @visited = Array.new(@m){Array.new(@n, false)}
    @directions = [[-1, 0], [1, 0], [0, -1], [0, 1]]

    for i in (0...@m) do 
        for j in (0...@n) do 
            if grid[i][j] == '1' and !@visited[i][j]
                @visited[i][j] = true 
                count += 1 
                bfs(grid, i, j)
            end 
        end 
    end 

    return count 
end

def bfs(grid, i, j)
    queue = Queue.new 
    queue << [i, j]

    while(!queue.empty?) do 
        row, col = queue.pop 
        for nr, nc in @directions do 
            new_row = row + nr 
            new_col = col + nc 
            if new_row >= 0 and new_col >= 0 and new_row < @m and new_col < @n and grid[new_row][new_col] == '1' and !@visited[new_row][new_col]
                @visited[new_row][new_col] = true 
                queue << [new_row, new_col]
            end 
        end 
    end 
end 