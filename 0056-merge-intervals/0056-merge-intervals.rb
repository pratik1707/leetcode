# @param {Integer[][]} intervals
# @return {Integer[][]}
def merge(intervals)
    n = intervals.length
    intervals.sort!
    merged = []
    merged << intervals[0]
    j = 0 
    i = 0

    while(i < n-1) do 
        if merged[j][1] >= intervals[i+1][0]
            merged[j] = [ [merged[j][0] , intervals[i+1][0]].min , [merged[j][1] , intervals[i+1][1]].max ]
        else
            merged << intervals[i+1]
            j += 1
        end 
        i += 1
    end 

    return  merged 

end