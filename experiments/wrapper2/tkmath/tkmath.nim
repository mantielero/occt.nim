{.passL:"-lTKMath".}
{.passC:"-I/usr/include/opencascade/" .}
{.experimental: "codeReordering".}

type
  #TColStdArray1OfReal* = object
  VectorWithNullMagnitude* = object
  ValueType* = object

when defined(windows):
  const tkmath* = "TKMath.dll"
elif defined(macosx):
  const tkmath* = "libTKMath.dylib"
else:
  const tkmath* = "libTKMath.so" 

include gp/gp_includes
include tcolgp/tcolgp_includes
include geomabs/geomabs_includes