class Solution:
    def countDays(self, days: int, meetings: List[List[int]]) -> int:
        meetings.sort()

        count = 0 
        count += meetings[0][0] - 1 
        n = len(meetings)
        start = meetings[0][1]   
        #print(meetings)     

        for i in range(1, n):
            if meetings[i][0] - start > 0:
                count += meetings[i][0] - start - 1

            start = max(start, meetings[i][1])
            #print(start)

        count += days - start

        return count 

        