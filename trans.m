%Pure Translation from point (x0,y0,z0) to (x0+x, y0+y, z0+z)

function t = trans(x,y,z)
  t = [
      1 0 0 x;
      0 1 0 y;
      0 0 1 z;
      0 0 0 1
      ];
end
