class Solution:
    def find_cost(self, adj_list, source, components, component_id, visited):
        nodes_queue = deque()

        # Initialize the component cost to the number that has only 1s in its binary representation
        component_cost = -1

        nodes_queue.append(source)
        visited[source] = True

        # Perform BFS to explore the component and calculate the cost
        while nodes_queue:
            node = nodes_queue.popleft()

            # Mark the node as part of the current component
            components[node] = component_id

            # Explore all neighbors of the current node
            for neighbor, weight in adj_list[node]:
                # Update the component cost by performing a bitwise AND of the edge weights
                component_cost &= weight

                # If the neighbor hasn't been visited, mark it as visited and add it to the queue
                if visited[neighbor]:
                    continue
                visited[neighbor] = True
                nodes_queue.append(neighbor)

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
        


        