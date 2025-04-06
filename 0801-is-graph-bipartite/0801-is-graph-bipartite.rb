# @param {Integer[][]} graph
# @return {Boolean}
def is_bipartite(graph)
    @adj_list = graph
    n = graph.length 
    @parent = Array.new(n, -1)

    @visited = Array.new(n, false)
    @level = Array.new(n, -1)

    for i in (0...n) do 
        if !@visited[i]
            @visited[i] = true 
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
        neighbors = @adj_list[n]

        for nei in neighbors do 
            if !@visited[nei]
                @visited[nei] = true 
                queue << nei 
                @level[nei] = @level[n] + 1
                @parent[nei] = n 
            elsif @parent[n] != nei and @level[n] == @level[nei]
                return true 
            end 
        end 
    end 

    return false 
end 