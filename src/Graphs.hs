module Graaf (
  Graph,
  Normal
) where

class (Ord v) => Vertex v where
      (-~-) :: Graph -> v -> Graph
      (-*-) :: Graph -> v -> Graph
      vic   :: v -> [v] 
      deg   :: v -> Int
      edges :: v -> [Edge]

class (Vertex v, Graph g) =>  SEdge e (v,v)
      first :: e -> v
      second :: e -> v
      vertices :: e -> (v,v)
      (-~-) :: g -> e -> g
      

class (Vertex v, SEdge e) => Graph g v e
      vertices  :: g v e -> [v]
      nverts    :: g v e -> Integral
      nedges    :: g v e -> Integral
      
      
