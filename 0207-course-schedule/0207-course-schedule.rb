# @param {Integer} num_courses
# @param {Integer[][]} prerequisites
# @return {Boolean}
def can_finish(num_courses, prerequisites)
   in_degree = [0] * num_courses 
   graph = Hash.new{|h, k| h[k] = [] }
   queue = Queue.new 
   res = []

   for pre, course in prerequisites do 
        in_degree[pre] += 1
        graph[course] << pre 
   end 

    for i in (0...num_courses) do     
        queue << i if in_degree[i] == 0
    end 

    while(!queue.empty?) do 
        node = queue.pop 
        neighbors = graph[node]
        res << node 

        for nei in neighbors do 
            in_degree[nei] -= 1
            if in_degree[nei] == 0
                queue << nei 
            end 
        end 
    end 

    return res.size  == num_courses
end 
