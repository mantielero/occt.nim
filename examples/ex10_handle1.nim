import occt

var aPnt:HandleGeom_CartesianPoint

aPnt = newHandle( cnew newGeomCartesianPoint(1.1, 2.2, 3.3) )
echo `*`(aPnt).x
`*`(aPnt).setY(1.3)

echo `*`(aPnt).y