# How to use Handle
import occt

var bHdl = newHandle( cnew newGeomCartesianPoint( 1.1, 2.2, 3.3 ) )  # : Handle[GeomCartesianPoint]  | Handle[geom_types.GeomCartesianPoint]

echo bHdl.x  #  Error: type mismatch: got <Handle[geom_types.GeomCartesianPoint]>
echo `*`(bHdl).x  # Function `*` converts from `Handle[T]` to `var T`. It is defined in StandardTransient

`*`(bHdl).setY(1.3)

echo `*`(bHdl).y
