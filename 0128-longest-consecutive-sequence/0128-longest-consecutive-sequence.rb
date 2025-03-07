# @param {Integer[]} nums
# @return {Integer}
def longest_consecutive(nums)
    return 0 if nums.length == 0
     
    @nums_set = nums.to_set 
    @visited = Set.new     
    @result = 1

    for num in nums do 
        if !@visited.include?(num)
            bfs(num)
        end 
    end 

    return @result 

end

def bfs(num)
    queue = Queue.new 
    queue << num  
    @visited.add(num)
    count = 1 

    while(!queue.empty?) do 
        node = queue.pop 
        if !@visited.include?((node+1)) and @nums_set.include?(node+1)
            count += 1
            @visited.add(node+1)
            queue << node+1
        end 

        if !@visited.include?((node-1)) and @nums_set.include?(node-1)
            count += 1
            @visited.add(node-1)
            queue << node-1
        end 
    end 

    @result = [@result, count].max
end 