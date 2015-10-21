function [ D ] = Floyd-Warshall(G)
% This is the Floyd Warshall algorithm from page 765 of CLRS.
%   It uses dynamic programming to build all pairs shortest paths
%   in O(n^3) time, with O(n^2).

  [n,~] = size(G);
  D = G;
  for k = (1:n)
    for i = (1:n)
       for j = (1:n)
          D(i,j) = min(D(i,j),D(i,k) + D(k,j));
       end
    end
  end
  

end

