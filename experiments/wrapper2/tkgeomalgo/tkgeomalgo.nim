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

include law/law_includes
include geomfill/geomfill_includes
include intsurf/intsurf_includes
