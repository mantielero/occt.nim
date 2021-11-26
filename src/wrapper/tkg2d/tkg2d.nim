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

include geom2d/geom2d_includes
include adaptor2d/adaptor2d_includes
include geom2dadaptor/geom2dadaptor_includes
