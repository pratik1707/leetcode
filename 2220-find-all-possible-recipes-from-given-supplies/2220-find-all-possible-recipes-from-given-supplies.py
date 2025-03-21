class Solution:
    def findAllRecipes(self, recipes: List[str], ingredients: List[List[str]], supplies: List[str]) -> List[str]:

        n = len(recipes)
        available = set(supplies)
        in_degree = [0]*n 
        graph = defaultdict(list)
        created_recipes = []
        recipe_index = {}

        # we will map ingredients to recipes 
        # first lets find which ingredients are available in supplies
        # if available then in_degree for that recipe is 0 
        # else if ingredient not available we add 1 to te in_degree
        # for eg bread available so 0 
        # sandwich depends on bread so sandwich is 1 
        # then burger again depends on bread so in_degree is 2
        # we will also have a graph to mark all ingredients that are not availble to recipes Line 27 
        for i in range(n):
            recipe_index[recipes[i]] = i 

        for i in range(len(ingredients)):
            ingr_list = ingredients[i]
            for ingredient in ingr_list:
                if ingredient not in available:
                    in_degree[i] += 1 # i => recipe id basically 
                    graph[ingredient].append(recipes[i])

        queue = deque()        

        for i in range(n):
            if in_degree[i] == 0:
                queue.append(i) 

        while(queue):
            recipeidx = queue.popleft()
            recipe = recipes[recipeidx]
            created_recipes.append(recipe) # in _degree is 0 so can be created

            other_recipes = graph[recipes[recipeidx]]

            for other_rec in other_recipes:
                r_idx = recipe_index[other_rec]
                in_degree[r_idx] -= 1
                if in_degree[r_idx] == 0:
                    queue.append(r_idx)

        return created_recipes

        # Other option BFS 
        # for i in range(n):
        #     recipe_queue.append(i)

        # created_recipes = []

        # last_available = -1

        # while(len(available) > last_available):
        #     last_available = len(available)
        #     queue_size = len(recipe_queue)

        #     while(queue_size > 0):
        #         queue_size -= 1 
        #         r = recipe_queue.popleft()

        #         ingredient = ingredients[r]
        #         val = True  
        #         for ingr in ingredient:
        #             if ingr not in available:
        #                 val = False 

        #         if val:
        #             created_recipes.append(recipes[r])
        #             available.add(recipes[r])
        #         else:
        #             recipe_queue.append(r)

        # return created_recipes


                



        