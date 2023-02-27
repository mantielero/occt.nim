#import ../../wrapper/tkbrep/topexp/topexp_explorer
import system
import ../../wrapper/occt_wrapper
#import ../../wrapper/tkg3d/tkg3d
import ../geom/geom
import ../../wrapper/breptools/[breptools_types, breptools_wireexplorer]
import ../../wrapper/tkg3d/topabs/topabs_types


#[
    topAbsSOLID, 
    topAbsSHELL, 
    topAbsFACE,
    topAbsWIRE, 
    topAbsEDGE, 
    topAbsVERTEX, 
    topAbsSHAPE
]#

# Compound
iterator getCompounds*(body:TopoDS_Shape):TopoDS_Face =
  var aFaceExplorer = newExplorer(body, topAbsCOMPOUND) # myBodyFused?
  while aFaceExplorer.more():
    yield aFaceExplorer.current.face
    aFaceExplorer.next()

# CompSolid
iterator getCompsolids*(body:TopoDS_Shape):TopoDS_Face =
  var aFaceExplorer = newExplorer(body, topAbsCOMPSOLID) # myBodyFused?
  while aFaceExplorer.more():
    yield aFaceExplorer.current.face
    aFaceExplorer.next()

# Faces
iterator getFaces*(body:TopoDS_Shape):TopoDS_Face =
  var aFaceExplorer = newExplorer(body, topAbsFACE) # myBodyFused?
  while aFaceExplorer.more():
    yield aFaceExplorer.current.face
    aFaceExplorer.next()


iterator getPlanes*(body:TopoDS_Shape): TopoDS_Face =
  for face in body.getFaces():
    var surface = face.surface 
    if surface.isGeomPlane:  # Consider only plane surfaces
      yield face#surface.toPlane

proc getPlaneZmax*(body:TopoDS_Shape): TopoDS_Face =
  ## get the plane with highest Z location
  var zMax = low(float)
  
  for aFace in body.getPlanes():
      var aPnt = aFace.surface.location()      
      var aZ = aPnt.z() 

      if aZ > zMax: # We get the plane surface with the highest Z value
        zMax = aZ
        result = aFace

proc getPlaneZmin*(body:TopoDS_Shape): TopoDS_Face =
  var zMin = high(float)
  
  for aFace in body.getPlanes():
      var aPnt = aFace.surface.location()      
      var aZ = aPnt.z() 

      if aZ < zMin: # We get the plane surface with the lowest Z value
        zMin = aZ
        result = aFace




# Wire
iterator getWires*(body:TopoDS_Shape):TopoDS_Face =
  var aFaceExplorer = newExplorer(body, topAbsWIRE) # myBodyFused?
  while aFaceExplorer.more():
    yield aFaceExplorer.current.face
    aFaceExplorer.next()

# iterator getEdges*(aWire: TopoDS_Wire): TopoDS_Edge =
#   var wireExplorer = newBRepTools_WireExplorer( aWire )
#   while wireExplorer.more():
#     yield wireExplorer.current
#     wireExplorer.next()

iterator getOrientation*(aWire: TopoDS_Wire): TopAbs_Orientation =
  var wireExplorer = newBRepTools_WireExplorer( aWire )
  while wireExplorer.more():
    yield wireExplorer.orientation
    wireExplorer.next()

iterator getVertex*(aWire: TopoDS_Wire): TopoDS_Vertex =
  var wireExplorer = newBRepTools_WireExplorer( aWire )
  while wireExplorer.more():
    yield wireExplorer.currentVertex
    wireExplorer.next()

# Edges
iterator getEdges*(body:TopoDS_Shape):TopoDS_Edge =
  var anExplorer = newExplorer(body, topAbsEDGE)
  while anExplorer.more():
    yield anExplorer.current.edge
    anExplorer.next()

# Vertex
iterator getVertex*(body:TopoDS_Shape):TopoDS_Vertex =
  var anExplorer = newExplorer(body, topAbsVERTEX)
  while anExplorer.more():
    yield anExplorer.current.vertex
    anExplorer.next()