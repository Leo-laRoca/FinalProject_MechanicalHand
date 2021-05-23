%Pure rotation in the y axis, global or local
function r = roty(theta)
r = [
    cos(theta) 0 sin(theta) 0;
    0 1 0 0;
    -sin(theta) 0 cos(theta) 0;
    0 0 0 1
    ];
end