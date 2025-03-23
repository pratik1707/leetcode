class Solution:
    def bfs(self, start, graph, ways, time_array):
        min_heap = [(0, 0)] #dijkstra algo

        while(min_heap):
            time, node = heapq.heappop(min_heap)
            #print(min_heap)

            for nei, weight in graph[node]:
                total_time = time + weight

                if total_time == time_array[nei]:
                    ways[nei] += ways[node]
                elif total_time < time_array[nei]:
                    ways[nei] = ways[node]
                    time_array[nei] = total_time 
                    heapq.heappush(min_heap, (total_time, nei))          



    def countPaths(self, n: int, roads: List[List[int]]) -> int:
        graph = defaultdict(list)
        time_array = [float('inf')] * n 
        time_array[0] = 0
        ways = [0] * n 
        ways[0] = 1 
        mod = (10**9 + 7)

        for road1, road2, weight in roads:
            graph[road1].append([road2, weight])
            graph[road2].append([road1, weight])

        #print(graph)
        start = 0         

        self.bfs(start, graph, ways, time_array)

        return ways[n-1] % mod 


        