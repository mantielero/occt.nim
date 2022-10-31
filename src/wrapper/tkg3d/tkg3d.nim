{.passL:"-lTKG3d".}
{.passC:"-I/usr/include/opencascade/" .}
#{.experimental: "codeReordering".}


#[ type
  TColStdArray1OfReal* = object
  VectorWithNullMagnitude* = object ]#

when defined(windows):
  const tkg3d* = "TKG3d.dll"
elif defined(macosx):
  const tkg3d* = "libTKG3d.dylib"
else:
  const tkg3d* = "libTKG3d.so" 

import geom/geom_includes
import topabs/topabs_includes
import adaptor3d/adaptor3d_includes
import geomadaptor/geomadaptor_includes
import tcolgeom/tcolgeom_includes
export geom_includes, topabs_includes, adaptor3d_includes, geomadaptor_includes, tcolgeom_includes
