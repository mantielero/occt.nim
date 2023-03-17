import ../../wrapper/occt_wrapper
import common

proc circle*(radius: SomeNumber):TopoDS_Wire =
  var circleRef = newGCE2dMakeCircle(oX2d(), radius.cfloat).value
  var aWire = newWire()
  aWire &= circleRef.edge2d.edge
  buildcurves3d(aWire)
  return aWire