# @param {Integer[][]} matrix
# @return {Void} Do not return anything, modify matrix in-place instead.
def set_zeroes(matrix)
    m  = matrix.length
    n = matrix[0].length 

    mappings = []

    for row in (0...m) do 
        for col in (0...n) do 
            if matrix[row][col] == 0
                mappings << [row, col]
            end 
        end 
    end 

    for r, c in mappings do 
        set_matrix_zero(matrix, r, c, m, n)
    end 

    return matrix 
end

def set_matrix_zero(matrix, r, c, m, n)
    for col in (0...n) do 
        matrix[r][col] = 0
    end 

    for row in (0...m) do 
        matrix[row][c] = 0
    end 
end 