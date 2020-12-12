import ../src/gp
import sugar

# Create two point classes, with (x,y,z) coordinates
var vec1 = Vec(1.0, 0.2, 2.3)
let pnt1 = Pnt(1.0,0.0,0.0)
let pnt2 = Pnt(1.0,0.0,1.0)
var vec2 = Vec(pnt1,pnt2)
echo vec2

