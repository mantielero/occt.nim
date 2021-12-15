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
include approx/approx_includes
include appcont/appcont_includes
include appparcurves/appparcurves_includes
include extrema/extrema_includes
include gce2d/gce2d_includes