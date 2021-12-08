import occt

# Create point instance, with (x,y,z) coordinates
var xyz1 = newXyz(1.0, 0.2, 2.3)
var pnt1 = newPnt(xyz1)
echo xyz1  # Shows: Xyz(x:1.0, y:0.2000000029802322, z:2.299999952316284)
echo pnt1  # Shows: Pnt(x:1.0, y:0.2000000029802322, z:2.299999952316284)
