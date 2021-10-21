{.passL:"-lTKBrep".}
{.passC:"-I/usr/include/opencascade/" .}
{.experimental: "codeReordering".}

#type
#  Geom2dUndefinedDerivative* = object
#  Geom2dUndefinedValue* = object
#[ type
  TColStdArray1OfReal* = object
  VectorWithNullMagnitude* = object ]#

#[ when defined(windows):
  const tkmath* = "TKMath.dll"
elif defined(macosx):
  const tkmath* = "libTKMath.dylib"
else:
  const tkmath* = "libTKMath.so"  ]#

include topods/topods_includes
