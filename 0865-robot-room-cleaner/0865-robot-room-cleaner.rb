# This is the robot's control interface.
# You should not implement it, or speculate about its implementation
# class Robot
#    def move():
#        Returns true if the cell in front is open and robot moves into the cell.
#        Returns false if the cell in front is blocked and robot stays in the current cell.
#    end
#
#    def turnLeft():
#        Robot will stay in the same cell after calling turnLeft/turnRight.
#        Each turn will be 90 degrees.
#    end
#
#    def turnRight():
#        Robot will stay in the same cell after calling turnLeft/turnRight.
#        Each turn will be 90 degrees.
#    end
#
#    def clean():
#        Clean the current cell.
#    end
# end

# @param {Robot} robot
# @return {}
def cleanRoom(robot)
	@directions = [[-1, 0], [0, 1], [1, 0], [0, -1]]

    @visited = Set.new 

    back_track(robot)
end

def back_track(robot, cell = [0, 0], d = 0)
    @visited.add(cell)
    robot.clean

    for i in (0...4) do 
        new_d = (d+i) % 4
        direction = @directions[new_d]
        new_cell = [cell[0] + direction[0], cell[1] + direction[1]]

        if !@visited.include?(new_cell) and robot.move
            back_track(robot, new_cell, new_d )            
        end 
        robot.turnRight
    end 
    go_back(robot)
end 

def go_back(robot)
    robot.turnRight
    robot.turnRight
    robot.move 
    robot.turnRight
    robot.turnRight
end 