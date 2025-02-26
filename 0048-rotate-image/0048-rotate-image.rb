# @param {Integer[][]} matrix
# @return {Void} Do not return anything, modify matrix in-place instead.
def rotate(matrix)
    #p matrix.transpose 
    matrix.transpose.each_with_index do |mat, i | 
        matrix[i] = mat.reverse 
    end 

    #matrix.map!{|a| a.reverse}

    return matrix 
end