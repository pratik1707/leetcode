# @param {Character[][]} board
# @param {String} word
# @return {Boolean}
def exist(board, word)
    @directions = [ [-1, 0], [1, 0], [0, -1], [0, 1] ]
    board_set = board.flatten.to_set 

    word.chars.each do |char|
        return false if !board_set.include?(char)
    end 

    @m = board.length
    @n = board[0].length 

    for row in (0...@m) do 
        for col in (0...@n) do 
            if board[row][col] == word[0]
                return true if board_helper(board, word[1...word.length], row, col)
            end 
        end 
    end 

    return false 
end

def board_helper(board, word, row, col)
    
    return true if word.length == 0

    #return false if board[row][col] != word[0]
    temp = board[row][col]
    board[row][col] = '.'

    @directions.each do |r, c|
        new_row = row + r
        new_col = col + c
        if new_row >= 0 and new_row < @m and new_col >= 0 and new_col < @n and board[new_row][new_col] == word[0]            
            return true if board_helper(board, word[1...word.length], new_row, new_col)            
        end 
    end 

    board[row][col] = temp 
    
    return false 
end 