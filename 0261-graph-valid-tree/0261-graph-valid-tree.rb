# @param {Integer} n
# @param {Integer[][]} edges
# @return {Boolean}
def valid_tree(n, edges)
    @visited = Array.new(n, false)
    @graph = Hash.new{|h, k| h[k] = [] }
    @parent = Array.new(n, -1)
    count = 0 

    for edge0, edge1 in edges do 
        @graph[edge0] << edge1
        @graph[edge1] << edge0
    end 

    for i in (0...n) do 
        if !@visited[i]
            @visited[i] = true 
            count += 1
            return false if count > 1
            return false if bfs(i)
        end 
    end 

    return true  
end

def bfs(node)
    queue = Queue.new 
    queue << node 
    @visited[node] = true 

    while(!queue.empty?) do 
        n = queue.pop 

        neighbors = @graph[n]

        for nei in neighbors do 
            if !@visited[nei]
                @visited[nei] = true 
                queue << nei 
                @parent[nei] = n 
            elsif @parent[n] != nei 
                return true 
            end 
        end 
    end 
    return false 
end