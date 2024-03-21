require 'set'

def knight_moves (start, target)

    # Helper function to find valid moves for the knights
    def valid_moves(position)
        x, y = position

        # All the knights possible moves
        moves = [
            [x+2, y+1], [x+2, y-1], [x-2, y+1], [x-2, y-1],
            [x+1, y+2], [x+1, y-2], [x-1, y+2], [x-1, y-2]
        ]
        # p "Starting Position: #{position}; Moves combination: #{moves.length} Moves: #{moves}"  
        
        moves_select = moves.select { |i,j| i.between?(0,7) && j.between?(0,7) } #Filter out moves that go off the board
        # p "Remove outbounds: Length: #{moves_select.length} ->  #{moves_select}"
        moves_select
    end

    queue = [[start, [start]]]
    # p "Queue: #{queue}"
    visited = Set.new
    # p "Visited: #{visited}"

    until queue.empty?
        position, path = queue.shift
        # p "Position, Path : #{position}, #{path}"
        return path if position == target

        unless visited.include?(position)
            visited.add(position)
            valid_moves(position).each { |move| queue.push([move, path + [move]]) }
            # p "queue: #{queue}"
        end
    end
    nil # No path found
end

start_pos = [3,3]
target_pos = [4,3]
shortest_path = knight_moves(start_pos, target_pos)

if shortest_path
    puts "You made it in #{shortest_path.length - 1} moves!  Here's your path:"
    shortest_path.each { |pos| puts pos.inspect }
else
    puts "No path found!"
end