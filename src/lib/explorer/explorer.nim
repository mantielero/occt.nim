#import ../../wrapper/tkbrep/topexp/topexp_explorer
import system
import ../../wrapper/occt_wrapper
#import ../../wrapper/tkg3d/tkg3d
import ../geom/geom

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

# Edges
iterator getEdges*(body:TopoDS_Shape):TopoDS_Edge =
  var anEdgeExplorer = newExplorer(body, topAbsEDGE)
  while anEdgeExplorer.more():
    yield anEdgeExplorer.current.edge
    anEdgeExplorer.next()




