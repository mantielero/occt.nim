# Type conformity: https://dev.opencascade.org/doc/overview/html/occt_user_guides__foundation_classes.html#autotoc_md64

import occt

# Create the pointer to the object
var aPoint:HandlePointObj
var aCartesianPoint = newPointCartesian(1, 2.2, 3.3)
aPnt1 = aPnt2 # This converts from HandleCartesianPointObj to HandleGeom_Point
echo `*`(aPnt1).x, " ", `*`(aPnt1).y, " ", `*`(aPnt1).z


