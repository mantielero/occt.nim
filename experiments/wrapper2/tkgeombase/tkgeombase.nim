{.passL:"-lTKGeomBase".}
{.passC:"-I/usr/include/opencascade/" .}
{.experimental: "codeReordering".}

#[ type
  TColStdArray1OfReal* = object
  VectorWithNullMagnitude* = object ]#

when defined(windows):
  const tkgeombase* = "TKGeomBase.dll"
elif defined(macosx):
  const tkgeombase* = "libTKGeomBase.dylib"
else:
  const tkgeombase* = "libTKGeomBase.so"

include gc/gc_includes
include gce/gce_includes