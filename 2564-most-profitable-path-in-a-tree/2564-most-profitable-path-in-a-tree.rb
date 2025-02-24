# @param {Integer[][]} edges
# @param {Integer} bob
# @param {Integer[]} amount
# @return {Integer}
def most_profitable_path(edges, bob, amount)
    n = edges.length
    @visited = [false] * n
    @bob_path = {}
    @graph = Hash.new{|h, k| h[k] = [] }

    for edge0, edge1 in edges do 
        @graph[edge0] << edge1
        @graph[edge1] << edge0
    end 

    result = -Float::INFINITY

    find_bob_path(bob, 0)

    queue = Queue.new 

    queue << [0, 0, 0]
    visited = [false] * n 
    time = 0 

    while(!queue.empty?) do 
        node, time, income = queue.pop 
        neighbors = @graph[node]               

        if !@bob_path.has_key?(node) or (time < @bob_path[node] )
            income += amount[node]
        elsif time == @bob_path[node]            
            income += amount[node]/2            
        end      

        if @graph[node].length == 1 and node != 0
            result = [result, income].max 
        end   

        for nei in neighbors do 
            if !visited[nei]               
                queue << [nei, time+1, income] 
            end 
        end 

        visited[node] = true 
    end 

    return result 
end

def find_bob_path(source_node, time)    
    @bob_path[source_node] = time 
    @visited[source_node] = true 

    return true  if source_node == 0

    for nei in @graph[source_node] do 
        next if @visited[nei]
        @visited[nei] = true 
        return true if find_bob_path(nei, time+1)         
    end

    @bob_path.delete(source_node)

    return false 
end 