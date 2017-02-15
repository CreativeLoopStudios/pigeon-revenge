///scale_ease(startScale x, startScale y, endScale x, endScale y, number of steps)

var obj = argument0;
var ax = argument1;
var ay = argument2;
var bx = argument3;
var by = argument4;
var steps = argument5;

obj.image_xscale += ( bx - ax ) / steps;
obj.image_yscale += ( by - ay ) / steps;
    

