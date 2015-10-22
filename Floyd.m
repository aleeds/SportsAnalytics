function [ D ] = Floyd(G)
% This is the Floyd Warshall algorithm from page 765 of CLRS.
%   It uses dynamic programming to build all pairs shortest paths
%   in O(n^3) time, with O(n^2).

  [n,~] = size(G);
  D = zeros(n,n,n);
  D(1,:,:) = G;
  for k = (2:n)
    for i = (1:n)
       for j = (1:n)
          D(k,i,j) = min(D(k - 1,i,j),D(k - 1,i,k) + D(k - 1,k,j));
       end
    end
  end
  D = D(n,:,:);

end

