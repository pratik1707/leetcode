# @param {Integer[]} heights
# @return {Integer}
def largest_rectangle_area(heights)
    @result = 0 

    n = heights.length  

    stack = []
    stack << -1 

    for i in (0...n) do 
        while(stack[-1] != -1 and heights[stack[-1]] > heights[i]) do 
            curr_height = heights[stack.pop] 
            area = curr_height * (i - stack[-1] - 1)
            @result = [@result, area].max 
        end 
        stack << i
    end 


    while(stack[-1] != -1) do         
        curr_height = heights[stack.pop] 
        area = curr_height * (heights.length - stack[-1] - 1)
        @result = [@result, area].max 
    end 
    # helper(0, n-1, heights)

    

    # for i in (0...n) do 
    #     curr_height = heights[i]       

    #     min_height = curr_height 
    #     j = i

    #     while(j < n) do 
    #         min_height = [min_height, heights[j]].min             
    #         j += 1 
    #         result = [result, min_height * (j - i)].max 
    #     end 
        
    # end 

    return @result 
end

def helper(start, end_idx, heights)
    return if start > end_idx
    min_val = Float::INFINITY 
    min_index = nil 

    for i in (start..end_idx) do 
        if heights[i] < min_val 
            min_val = heights[i]
            min_index = i 
        end 
    end  

    # p min_index
    # p min_val   

    max_area = min_val * (end_idx - start + 1 ) 
    @result = [@result, max_area].max 

    #p @result 

    helper(start, min_index-1, heights)
    helper(min_index+1, end_idx, heights)
end 