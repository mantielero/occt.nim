import ../../wrapper/brepprimapi/brepprimapi_includes
import ../../wrapper/topods/topods_types

# converter toShape*(obj:BRepPrimAPI_MakeCylinder): TopoDS_Shape =
#   # BRepPrimAPI_MakeCylinder -> BRepPrimAPI_MakeOneAxis -> TopoDS_Solid -> TopoDS_Shape
#   obj.toTopoDS_Shape


# proc `&`*[X,Y](x: X; y: Y): seq[TopoDS_Shape] =
#   x.solid & y.solid
