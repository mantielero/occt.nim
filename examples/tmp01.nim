import occt

var aPnt1: Handle[Geom_Point]           
var aPnt2, aPnt3: Handle[Geom_CartesianPoint] 

aPnt2 = newHandle( cnew newGeomCartesianPoint(1.0,2.0,3.0) ) # 
aPnt1 = newHandle( cast[ptr Geom_Point](aPnt2.get) )

#echo typeof(aPnt1)  # --> Handle[geom_types.GeomPoint]
#echo typeof(aPnt3)  # --> Handle[geom_types.GeomCartesianPoint]

aPnt3 = dcast[Geom_CartesianPoint]( aPnt1 )
