import occt

# Create a couple of 2D cartesian points
var 
  p1 = newPnt(0,0)
  p2 = newPnt(10,0)

echo "Point 'p1':"
echo p1
echo p1.x
echo p1.y


echo "\nDistance: p1-p2: ", p1.distance(p2)
#echo p1.squareDistance(p2)

echo "\nUpdate 'p1.x':"
p1.x = 2.1
echo p1.x

echo "\nNew 'p3' pointing to 'p2'"
var p3 = p2

echo "p2: ", p2
echo "p3: ", p3

