{.passL:"-lTKGeomAlgo".}
{.passC:"-I/usr/include/opencascade/" .}
{.experimental: "codeReordering".}


when defined(windows):
  const tkgeomalgo* = "TKGeomAlgo.dll"
elif defined(macosx):
  const tkgeomalgo* = "libTKGeomAlgo.dylib"
else:
  const tkgeomalgo* = "libTKGeomAlgo.so"

#[ type
  BndBox* = object
  Selector* = object of RootObj
  BRepToolsReShape* = object ]#

import law/law_includes
import geomfill/geomfill_includes
import intsurf/intsurf_includes
import appblend/appblend_includes

export law_includes, geomfill_includes, intsurf_includes, appblend_includes
