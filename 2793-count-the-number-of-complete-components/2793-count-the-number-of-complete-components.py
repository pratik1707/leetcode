class Solution:
    def connected_components(self, node, graph, visited):
        #print(node)
        queue = deque()
        queue.append(node)
        visited[node] = True 
        flag = True 
        component = []

        while(queue):
            n = queue.popleft()
            val_len = len(graph[n])
            component.append(n)
            #print(val_len)

            for nei in graph[n]:
                if not visited[nei]:
                    visited[nei] = True 
                    queue.append(nei)
                              
        for node in component:
            if len(graph[node]) != len(component) - 1:
                return False         

        return True  


    def countCompleteComponents(self, n: int, edges: List[List[int]]) -> int:
        graph = defaultdict(list)
        visited = [False] * n 
        count = 0 

        for edge0, edge1 in edges:
            graph[edge0].append(edge1)
            graph[edge1].append(edge0)
        
        #print(graph)

        for i in range(n):
            if not visited[i]:
                if self.connected_components(i, graph, visited):
                    #print(i)
                    count += 1

        return count 
        