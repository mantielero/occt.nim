{.passL:"-lTKBO".}
{.passC:"-I/usr/include/opencascade/" .}
{.experimental: "codeReordering".}

#type
#  GeomUndefinedDerivative* = object
#  GeomUndefinedValue* = object
#[ type
  TColStdArray1OfReal* = object
  VectorWithNullMagnitude* = object ]#

when defined(windows):
  const tkbo* = "TKBO.dll"
elif defined(macosx):
  const tkbo* = "libTKBO.dylib"
else:
  const tkbo* = "libTKBO.so" 

include brepalgoapi/brepalgoapi_includes
include bopalgo/bopalgo_includes
