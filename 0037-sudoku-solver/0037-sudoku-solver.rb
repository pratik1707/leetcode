# @param {Character[][]} board
# @return {Void} Do not return anything, modify board in-place instead.
def solve_sudoku(board)
    m = board.length
    n = board[0].length 

    sudoku_helper(board, m, n)

    return board

end

def sudoku_helper(board,  m, n)
    unfilled = false 
    row = nil
    col = nil 

    for i in (0...9) do 
        for j in (0...9) do 
            if board[i][j] == '.'
                row = i
                col = j
                unfilled = true 
                break                 
            end 
        end 
    end 

    return true unless unfilled 
    #p row 
    #p col 
    (1..9).each do |num|        
        if valid_sudoku?(board, row, col, num.to_s)
            board[row][col] = num.to_s
            if sudoku_helper(board,  m, n)
                return true 
            else
                board[row][col] = '.'
            end 
        end 
    end 

    return false 
end 

def valid_sudoku?(board, row, col, num)
    
    return false if board[row].include?(num)

    for r in (0...9) do 
        return false if board[r][col] == num
    end 

    new_r = (row/3)*3
    new_c = (col/3)*3

    for i in (new_r...new_r+3) do 
        for j in (new_c...new_c+3) do 
            return false if board[i][j] == num 
        end 
    end 
   
    return true 
end 