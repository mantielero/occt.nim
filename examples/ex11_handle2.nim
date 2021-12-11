import occt

# Create the pointer to the object
var aPntPtr = cnew newGeomCartesianPoint(1.1, 2.2, 3.3) 

# Create handles for the object
var aPntHandle1, aPntHandle2: HandleGeom_CartesianPoint
aPntHandle1 = newHandle( aPntPtr )
aPntHandle2 = newHandle( aPntPtr )

# We can now access to the same object through different handles
assert `*`(aPntHandle1).x == `*`(aPntHandle2).x 
assert `*`(aPntHandle1).y == `*`(aPntHandle2).y
assert `*`(aPntHandle1).z == `*`(aPntHandle2).z

# If we modify something using one handle, the other can see it.
`*`(aPntHandle1).setY(1.3)
assert `*`(aPntHandle1).y == `*`(aPntHandle2).y
echo `*`(aPntHandle1).y

echo "All assertions were true!!"
