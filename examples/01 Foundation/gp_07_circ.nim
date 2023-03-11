import occt

var origin = pnt(0,0,0)
var xyzPnt = xyz(0,0,1)
var v = dir(xyzPnt)
var axis = ax2(origin, v)
var c = circ(axis, 5.0)

var cc = newCircle( c )

echo cc
echo cc.radius