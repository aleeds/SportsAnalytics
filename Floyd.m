function [ D ] = Floyd(G)
% This is the Floyd Warshall algorithm from page 765 of CLRS.
%   It uses dynamic programming to build all pairs shortest paths
%   in O(n^3) time, with O(n^2).
  [n,~] = size(G);
  % Needs to set the weights to edges it can't go to to an extremely large
  % number. Ei, it takes a loooong time to go from 1 node to the other if
  % there is no edge. 
  for i = (1:n)
     for j = (1:n)
         if (i ~= j && G(i,j) == 0)
            G(i,j) = 10000000; 
         end
     end
  end
  
  for k = (2:n)
    for i = (1:n)
       for j = (1:n)
          G(i,j) = min(G(i,j),G(i,k) + G(k,j));

       end
    end
  end
  D = G;
end

