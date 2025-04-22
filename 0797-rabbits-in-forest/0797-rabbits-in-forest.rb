# @param {Integer[]} answers
# @return {Integer}
def num_rabbits(answers)
    result = 0
    n = answers.length 

    map = Hash.new(0)

    for answer in answers do 
        if map.has_key?(answer) and map[answer] >= answer+1
            map.delete(answer)
        end 

        result += (answer+1) if !map.has_key?(answer)
        map[answer] += 1 
        #p map 
    end 

    return result 
end