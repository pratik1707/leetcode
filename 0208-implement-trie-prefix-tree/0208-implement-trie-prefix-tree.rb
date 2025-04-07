class Trie
    def initialize()
        @root = {}
        @end = '#'
    end


=begin
    :type word: String
    :rtype: Void
=end
    def insert(word)
        node = @root

        for char in word.chars do 
            if !node.has_key?(char)
                node[char] = {}
            end 
            node = node[char]
        end 
        
        node[@end] = true 

    end


=begin
    :type word: String
    :rtype: Boolean
=end
    def search(word)
        node = @root

        for char in word.chars do 
            if node.has_key?(char)
                node = node[char]
            else
                return false 
            end 
            
        end 
        return node.has_key?('#')
        
    end


=begin
    :type prefix: String
    :rtype: Boolean
=end
    def starts_with(prefix)
        node = @root

        for char in prefix.chars do 
            if node.has_key?(char)
                node = node[char]
            else
                return false 
            end 
            
        end 
       
        return true 
    end


end

# Your Trie object will be instantiated and called as such:
# obj = Trie.new()
# obj.insert(word)
# param_2 = obj.search(word)
# param_3 = obj.starts_with(prefix)