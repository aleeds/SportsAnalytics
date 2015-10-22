function [ D ] = Floyd(G)
% This is the Floyd Warshall algorithm from page 765 of CLRS.
%   It uses dynamic programming to build all pairs shortest paths
%   in O(n^3) time, with O(n^2).

  [n,~] = size(G);
  D = zeros(n,n,n);
  D(:,:,1) = G;
  for k = (2:n)
    for i = (1:n)
       for j = (1:n)
          D(i,j,k) = min(D(i,j,k - 1),D(i,k, k - 1) + D(k,j,k - 1));
       end
    end
  end
  t = D;
  D = zeros(n,n);
  D = t(:,:,k);
  
end

