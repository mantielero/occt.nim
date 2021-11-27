import occt

# Create two point classes, with (x,y,z) coordinates
var vec1 = newVec(1.0, 0.2, 2.3)
let pnt1 = newPnt(1.0,0.0,0.0)
let pnt2 = newPnt(1.0,0.0,1.0)
var vec2 = newVec(pnt1,pnt2)
echo vec2
vec2.scale(2.0)
vec2.scale(6)
echo vec2

vec2.setCoord(2,3.6)
echo vec2