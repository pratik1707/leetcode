class ListNode:
    def __init__(self, key, val, next = None, prev = None):
        self.key = key 
        self.val = val 
        self.next = next 
        self.prev = prev 

class LRUCache:    
    def remove(self, node):        
        prev_node = node.prev 
        next_node = node.next 
        prev_node.next = next_node
        next_node.prev = prev_node 

    def add(self, node):
        next_node = self.head.next 
        self.head.next = node 
        node.prev = self.head 
        node.next = next_node 
        next_node.prev = node  


    def __init__(self, capacity: int):
        self.capacity = capacity 
        self.cache = {}
        self.count = 0 
        self.head = ListNode(-1, -1)
        self.tail = ListNode(-2, -2)
        self.head.next = self.tail 
        self.tail.prev = self.head 

    def get(self, key: int) -> int:        
        if key in self.cache:
            node = self.cache[key]
            self.remove(node)
            self.add(node)
            return node.val 
        else:
            return -1 
        

    def put(self, key: int, value: int) -> None:
        if key in self.cache:
            node = self.cache[key]
            self.remove(node)            
        else:                    
            if self.count == self.capacity:  
                node_to_delete = self.tail.prev             
                self.remove(node_to_delete) 
                del self.cache[node_to_delete.key]  
                self.count -= 1    
            self.count += 1 
            
        node = ListNode(key, value)
        self.add(node)
        self.cache[key] = node    
                 

        
        #print(self.cache)              

    
        
        


# Your LRUCache object will be instantiated and called as such:
# obj = LRUCache(capacity)
# param_1 = obj.get(key)
# obj.put(key,value)