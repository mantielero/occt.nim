#import ../../wrapper/tkbrep/topexp/topexp_explorer
import ../../wrapper/tkbrep/tkbrep
import ../../wrapper/tkg3d/tkg3d

iterator getFaces*(body:TopoDS_Shape):TopoDS_Face =
  var aFaceExplorer = newExplorer(body, topAbsFACE) # myBodyFused?
  while aFaceExplorer.more():
    yield aFaceExplorer.current.face
    aFaceExplorer.next()


iterator getEdges*(body:TopoDS_Shape):TopoDS_Edge =
  var anEdgeExplorer = newExplorer(body, topAbsEDGE)
  while anEdgeExplorer.more():
    yield anEdgeExplorer.current.edge
    anEdgeExplorer.next()