import ../../wrapper/occt_wrapper
import ../explorer/explorer

#----
proc pnt*[X,Y: SomeNumber](x: X; y: Y): gp_Pnt2d =
  pnt2d(x.cfloat, y.cfloat)


# proc x*(obj:gp_pnt2d):float =
#   obj.x

# proc y*(obj:gp_pnt2d):float =
#   obj.y

proc `x=`*(obj:var gp_Pnt2d; val:SomeNumber) =
  obj.setX( val.float )

proc `y=`*(obj:var gp_Pnt2d; val:SomeNumber) =
  obj.setY( val.float )

#----

type
  EdgesTyps = Geom2dEllipse | Geom2dCircle | Geom2dTrimmedCurve


proc edge2d*[T: EdgesTyps](L: Handle[T]): Edge2dObj {.
    cdecl, constructor, importcpp: "BRepBuilderAPI_MakeEdge2d(@)", header: "BRepBuilderAPI_MakeEdge2d.hxx".}

# proc edge2d*(L: Handle[]): Edge2dObj {.
#     cdecl, constructor, importcpp: "BRepBuilderAPI_MakeEdge2d(@)", header: "BRepBuilderAPI_MakeEdge2d.hxx".}


# Finder
#BRepTools_WireExplorer explorer(wire);

# iterate through all edges in the wire
# proc getLastVertex*(aWire: TopoDS_Wire):gp_Pnt2d =
#   var latest:gp_Pnt2d
#   for aEdge in aWire.getEdges:
#     for aVertex in aEdge.getVertex:
#       latest.gp_Pnt2d


# while (explorer.More()) {
#     explorer.Next();
# }

# // the last vertex of the last edge is the last point of the wire
# TopoDS_Vertex lastVertex = explorer.CurrentVertex();
# gp_Pnt lastPoint = BRep_Tool::Pnt(lastVertex);