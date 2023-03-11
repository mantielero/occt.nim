# Type conformity: https://dev.opencascade.org/doc/overview/html/occt_user_guides__foundation_classes.html#autotoc_md64

import occt

# proc newPointCartesian[X,Y,Z:SomeNumber](x:X; y:Y, z:Z):HandleCartesianPointObj =
#   newHandle( cnew newGeomCartesianPoint(x.cfloat, y.cfloat, z.cfloat) )

# converter toCartesianPointObj*(tmp:HandleCartesianPointObj):var CartesianPointObj  =
#   `*`(tmp)


# Create the pointer to the object
var aPnt1:HandlePointObj
var aPnt2:HandleCartesianPointObj
aPnt2 = newPointCartesian(1, 2.2, 3.3)
aPnt1 = aPnt2 # This converts from HandleCartesianPointObj to HandleGeom_Point
echo `*`(aPnt1).x, " ", `*`(aPnt1).y, " ", `*`(aPnt1).z


