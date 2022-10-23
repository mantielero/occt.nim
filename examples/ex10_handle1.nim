import occt

var aPnt:Handle[CartesianPointObj]

aPnt = newHandle( cnew cartesianPoint(1.1, 2.2, 3.3) )
echo `*`(aPnt).x
`*`(aPnt).setY(1.3)

echo `*`(aPnt).y