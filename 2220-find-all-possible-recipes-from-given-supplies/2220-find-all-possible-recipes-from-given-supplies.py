class Solution:
    def findAllRecipes(self, recipes: List[str], ingredients: List[List[str]], supplies: List[str]) -> List[str]:
        n = len(recipes)
        available = set(supplies)
        recipe_queue = deque()

        for i in range(n):
            recipe_queue.append(i)

        created_recipes = []

        last_available = -1

        while(len(available) > last_available):
            last_available = len(available)
            queue_size = len(recipe_queue)

            while(queue_size > 0):
                queue_size -= 1 
                r = recipe_queue.popleft()

                ingredient = ingredients[r]
                val = True  
                for ingr in ingredient:
                    if ingr not in available:
                        val = False 

                if val:
                    created_recipes.append(recipes[r])
                    available.add(recipes[r])
                else:
                    recipe_queue.append(r)

        return created_recipes


                



        