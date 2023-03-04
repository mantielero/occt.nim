{.passL:"-lTKGeomBase".}
{.passC:"-I/usr/include/opencascade/" .}
#{.experimental: "codeReordering".}

#[ type
  TColStdArray1OfReal* = object
  VectorWithNullMagnitude* = object ]#

when defined(windows):
  const tkgeombase* = "TKGeomBase.dll"
elif defined(macosx):
  const tkgeombase* = "libTKGeomBase.dylib"
else:
  const tkgeombase* = "libTKGeomBase.so"

import gc/gc_includes
import gce/gce_includes
import approx/approx_includes
import appcont/appcont_includes
import appparcurves/appparcurves_includes
#import extrema/extrema_includes
import gce2d/gce2d_includes
export gc_includes, gce_includes, approx_includes, appcont_includes, appparcurves_includes
#export extrema_includes
export gce2d_includes
