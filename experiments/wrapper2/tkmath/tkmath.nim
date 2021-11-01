{.passL:"-lTKMath".}
{.passC:"-I/usr/include/opencascade/" .}
{.experimental: "codeReordering".}

type
  #TColStdArray1OfReal* = object
  VectorWithNullMagnitude* = object
  ValueType* = object
  Link* = object
  TShortHArray1OfShortReal* = object
  TShortArray1OfShortReal* = object
  MathNotSquare* = object
  MathSingularMatrix* = object

when defined(windows):
  const tkmath* = "TKMath.dll"
elif defined(macosx):
  const tkmath* = "libTKMath.dylib"
else:
  const tkmath* = "libTKMath.so" 

include gp/gp_includes
include tcolgp/tcolgp_includes
include geomabs/geomabs_includes
include toploc/toploc_includes
include poly/poly_includes
include math/math_includes
include precision/precision_includes
include convert/convert_includes