import occt

proc newPointCartesian[X,Y,Z:SomeNumber](x:X; y:Y, z:Z):HandleGeom_CartesianPoint =
  newHandle( cnew newGeomCartesianPoint(x.cfloat, y.cfloat, z.cfloat) )

converter toGeom_CartesianPoint*(tmp:HandleGeom_CartesianPoint):var Geom_CartesianPoint  =
  `*`(tmp)


# Create the pointer to the object
var aPnt2:HandleGeom_CartesianPoint
var aPnt1 = newPointCartesian(1, 2.2, 3.3)
echo aPnt1.x, " ", aPnt1.y, " ", aPnt1.z
echo "aPnt is null: ", aPnt1.isNull, " ", aPnt2.isNull

aPnt2 = aPnt1
echo aPnt2.y
echo aPnt1.y

aPnt1.setY(5.5)
echo aPnt2.y
echo aPnt1.y

