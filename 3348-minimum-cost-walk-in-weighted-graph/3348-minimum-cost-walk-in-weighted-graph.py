class Solution:
    def find_cost(self, graph, source, components, component_id, visited):
        queue = deque()

        component_cost = -1

        queue.append(source) 
        
        visited[source] = True 

        while(queue):
            node = queue.popleft()
            
            components[node] = component_id

            for nei, weight in graph[node]:
                component_cost &= weight 

                if visited[nei]:
                    continue

                visited[nei] = True 
                queue.append(nei)

        return component_cost 
            


    def minimumCost(self, n: int, edges: List[List[int]], query: List[List[int]]) -> List[int]:
        graph = defaultdict(list)

        for st, end, weight in edges:
            graph[st].append([end, weight])
            graph[end].append([st, weight])

        visited = [False] * n

        cost = [] 
        result = []
        components = [0] * n 
        component_id = 0 

        for i in range(n):
            if not visited[i]:
                cost.append(self.find_cost(graph, i, components, component_id, visited))
                component_id += 1

        for st, end in query:
            if components[st] == components[end]:
                result.append(cost[components[st]])
            else:
                result.append(-1)

        return result 
        


        