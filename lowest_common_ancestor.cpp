# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, x):
#         self.val = x
#         self.left = None
#         self.right = None

class Solution:
    def _init__(self):
        self.ans = None

    def lowestCommonAncestor(self, root: 'TreeNode', p: 'TreeNode', q: 'TreeNode') -> 'TreeNode':
        lca = None 
        if not root:
            return None 

        def dfs(node, p, q):
            nonlocal lca 
            pfound = False
            qfound = False

            if node == p:
                pfound = True 

            if node == q: 
                qfound = True 

            if node.left:
                pf, qf = dfs(node.left, p, q)
                pfound = pfound or pf
                qfound = qfound or qf

            if node.right:
                pf, qf = dfs(node.right, p, q)
                pfound = pfound or pf
                qfound = qfound or qf

            if pfound and qfound and not lca:                
                lca = node 

            return pfound, qfound 

        dfs(root, p, q)

        return lca
        
        
