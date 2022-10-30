{.passL:"-lTKG2d".}
{.passC:"-I/usr/include/opencascade/" .}
{.experimental: "codeReordering".}

type
  Geom2dUndefinedDerivative* = object
  Geom2dUndefinedValue* = object
#[ type
  TColStdArray1OfReal* = object
  VectorWithNullMagnitude* = object ]#

when defined(windows):
  const tkg2d* = "TKG2d.dll"
elif defined(macosx):
  const tkg2d* = "libTKG2d.dylib"
else:
  const tkg2d* = "libTKG2d.so"

import geom2d/geom2d_includes
import adaptor2d/adaptor2d_includes
import geom2dadaptor/geom2dadaptor_includes

export geom2d_includes, adaptor2d_includes, geom2dadaptor_includes
