# Type conformity: https://dev.opencascade.org/doc/overview/html/occt_user_guides__foundation_classes.html#autotoc_md64

import occt

proc newPointCartesian[X,Y,Z:SomeNumber](x:X; y:Y, z:Z):HandleGeom_CartesianPoint =
  newHandle( cnew newGeomCartesianPoint(x.cfloat, y.cfloat, z.cfloat) )

converter toGeom_CartesianPoint*(tmp:HandleGeom_CartesianPoint):var Geom_CartesianPoint  =
  `*`(tmp)

converter toGeom_Point*(tmp:HandleGeom_CartesianPoint):HandleGeom_Point  {.importcpp:"(@)", header:"Geom_Point.hxx",cdecl.}

# Create the pointer to the object
var aPnt1:HandleGeom_Point
var aPnt2:HandleGeom_CartesianPoint
aPnt2 = newPointCartesian(1, 2.2, 3.3)
aPnt1 = aPnt2 # This converts from HandleGeom_CartesianPoint to HandleGeom_Point
echo `*`(aPnt1).x, " ", `*`(aPnt1).y, " ", `*`(aPnt1).z


