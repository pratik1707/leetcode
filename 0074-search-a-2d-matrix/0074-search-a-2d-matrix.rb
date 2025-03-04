# @param {Integer[][]} matrix
# @param {Integer} target
# @return {Boolean}
def search_matrix(matrix, target)
    m = matrix.length
    n = matrix[0].length 

    low = 0
    high = m-1

    while(low <= high) do 
        mid = (low + high)/2
        if matrix[mid][0] <= target and matrix[mid][n-1] >= target
            return binary_search(matrix[mid], target, n)
        elsif target < matrix[mid][0]
            high = mid-1
        else
            low = mid+1
        end 
    end 
    return false 
end

def binary_search(arr, target, n)
    low = 0 
    high = n-1 

    while(low <= high) do 
        mid = (low + high)/2
        if arr[mid] == target
            return true 
        elsif arr[mid] > target
            high = mid-1 
        else
            low = mid+1
        end 
    end 

    return false 
end 