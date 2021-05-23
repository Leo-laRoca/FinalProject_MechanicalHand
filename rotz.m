%Pure rotation in the z axis, global or local
function r = rotz(theta)
r = [
    cos(theta) -sin(theta) 0 0;
    sin(theta) cos(theta) 0 0;
    0 0 1 0;
    0 0 0 1
    ];
end