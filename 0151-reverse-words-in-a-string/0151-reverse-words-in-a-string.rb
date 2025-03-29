# @param {String} s
# @return {String}
def reverse_words(s)
    s.strip! 

    return s.split.reverse.join(' ') 
end