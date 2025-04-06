# @param {Integer} n
# @param {Integer[][]} edges
# @return {Integer}
def count_components(n, edges)
    @visited = Array.new(n, false)
    @graph = Hash.new{|h, k| h[k] = [] }
    count = 0 

    for edge0, edge1 in edges do 
        @graph[edge0] << edge1
        @graph[edge1] << edge0
    end 

    for i in (0...n) do 
        if !@visited[i]
            @visited[i] = true 
            count += 1
            bfs(i)
        end 
    end 

    return count 
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
            end 
        end 
    end 
end 