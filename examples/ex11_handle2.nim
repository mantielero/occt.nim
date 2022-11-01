import occt, strformat

# Sugar

# ----
var aPnt = newPnt(1, 2.2, 3) # Create the pointer to the object
echo aPnt.x  # 1.0
echo aPnt    # HandleCartesianPointObj(x:1.0, y:2.200000047683716, z:3.0)

# # We can now access to the same object through different handles
var bPnt, cPnt: HandleCartesianPointObj
bPnt = aPnt
cPnt = aPnt
echo bPnt.x

aPnt.x = 4

echo aPnt # HandleCartesianPointObj(x:4.0, y:2.200000047683716, z:3.0)
echo bPnt # HandleCartesianPointObj(x:4.0, y:2.200000047683716, z:3.0)

#var aPntPtr = cnew cartesianPoint(1, 2.2, 3) 

# Create handles for the object
#[ var aPntHandle1, aPntHandle2: HandleCartesianPointObj
aPntHandle1 = newHandle( aPntPtr )
aPntHandle2 = newHandle( aPntPtr )


assert `*`(aPntHandle1).x == `*`(aPntHandle2).x 
assert `*`(aPntHandle1).y == `*`(aPntHandle2).y
assert `*`(aPntHandle1).z == `*`(aPntHandle2).z

# If we modify something using one handle, the other can see it.
`*`(aPntHandle1).setY(1.3)
assert `*`(aPntHandle1).y == `*`(aPntHandle2).y
echo `*`(aPntHandle1).y

echo "All assertions were true!!" ]#
