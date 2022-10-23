import occt

# Create two point classes, with (x,y,z) coordinates
var vec1 = vec(1.0, 0.2, 2.3)
let pnt1 = pnt(1.0,0.0,0.0)
let pnt2 = pnt(1.0,0.0,1.0)
var vec2 = vec(pnt1,pnt2)
echo vec2       # Vec(x:0.0, y:0.0, z:1.0)
vec2.scale(2.0)
vec2.scale(6)
echo vec2       # Vec(x:0.0, y:0.0, z:12.0)

vec2.set(2,3,6)
echo vec2       # Vec(x:2.0, y:3.0, z:6.0)
