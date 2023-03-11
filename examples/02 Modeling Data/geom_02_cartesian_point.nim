import occt, strformat

# Sugar

# ----
var aPnt = newPnt(1, 2.2, 3) # Create the pointer to the object
echo aPnt.x  # 1.0
echo aPnt    # HandleCartesianPointObj(x:1.0, y:2.200000047683716, z:3.0)

# We can now access to the same object through different handles
var bPnt, cPnt: HandleCartesianPointObj
bPnt = aPnt
cPnt = aPnt
echo bPnt.x

# Updating want handles updates all of them
aPnt.x = 4

echo aPnt # HandleCartesianPointObj(x:4.0, y:2.200000047683716, z:3.0)
echo bPnt # HandleCartesianPointObj(x:4.0, y:2.200000047683716, z:3.0)

