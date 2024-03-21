# knights-travails

The Odin Project - Ruby Course: Project: Knights Travail

## My personal notes

## BFS vs. DFS

Breadth-First Search (BFS) and Depth-First Search (DFS) are two fundamental algorithms used for traversing or searching graphs and trees. 

### BFS, Breadth-First Search

BFS is a vertex-based technique for finding the *shortest path* in the graph. It uses a Queue data structure that follows first in first out. In BFS, one vertex is selected at a time when it is visited and marked then its adjacent are visited and stored in the queue. It is slower than DFS. 

- BFS is a traversal approach in which we first walk through all nodes on the same level before moving on to the next level.  
- BFS builds the tree level by level.
- It works on the concept of FIFO (First In First Out). 
- BFS is more suitable for searching vertices closer to the given source.
- BFS is used in various applications such as bipartite graphs, shortest paths, etc.

### DFS, Depth First Search

DFS is an edge-based technique. It uses the Stack data structure and performs two stages, first visited vertices are pushed into the stack, and second if there are no vertices then visited vertices are popped. 

- DFS is also a traversal approach in which the traverse begins at the root node and proceeds through the nodes as far as possible until we reach the node with no unvisited nearby nodes.
- DFS builds the tree sub-tree by sub-tree.
- It works on the concept of LIFO (Last In First Out).
- DFS is more suitable when there are solutions away from source.
- DFS is used in various applications such as acyclic graphs and finding strongly connected components etc.

#### Deciding whether to use BFS or DFS:
- **Problem constraints**: If the problem involves *finding a solution along a single path*, DFS might be more suitable. On the other hand, if you need to *find the shortest path* or *explore all possible paths to a certain depth*, BFS is often a better choice.

- **Space Complexity**: BFS typically requires more memory compared to DFS because it stores all the nodes at a given depth in a queue. If memory usage is a concern and the graph or tree is deep, DFS might be preferable due to its lower memory usage.

- **Time Complexity**: In terms of time complexity, both DFS and BFS have the same worst-case time complexity (O(V + E)), where V is the number of vertices and E is the number of edges. However, in practice, the performance of each algorithm can vary depending on the structure of the graph. DFS can be faster when the solution is deep in the graph, while BFS can be faster when the solution is closer to the starting node.

- **Cycle Detection**: If your graph contains cycles and you want to avoid revisiting nodes, DFS is better suited because it explores as far as possible along each branch before backtracking. BFS, on the other hand, may revisit nodes if they are reachable through different paths.

- **Directed vs. Undirected Graphs**: Consider whether your graph is directed or undirected. BFS is typically used for finding shortest paths in unweighted graphs, while DFS is commonly used for topological sorting and detecting cycles in directed graphs.

In summary, choose DFS if memory usage is a concern, you need to find a single path or detect cycles, or the solution is likely deep in the graph. Choose BFS if you need to find the shortest path, explore all possible paths to a certain depth, or memory usage is not a concern. 


## Knights Travail Problem Approach

Use BFS (Breadth-First Search) algorithm as it helps find the shortest path between two nodes in a graph, which in this case represented as the chess board.

1. Define a function ```knight_moves``` that takes two parameters: the starting square [x1, y1] and the ending square [x2, y2].

2. Implement a helper function ```valid_moves``` that takes a current position [x, y] and returns a list of valid moves for the knight from that position.

3. Implement the BFS algorithm to search for the shortest path from the starting square to the ending square.

4. Output the shortest path found by BFS.

