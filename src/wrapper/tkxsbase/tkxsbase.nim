{.passL:"-lTKG3d".}
{.passC:"-I/usr/include/opencascade/" .}
{.experimental: "codeReordering".}

#type
#  GeomUndefinedDerivative* = object
#  GeomUndefinedValue* = object
#[ type
  TColStdArray1OfReal* = object
  VectorWithNullMagnitude* = object ]#

when defined(windows):
  const tkxsbase* = "TKXSBase.dll"
elif defined(macosx):
  const tkxsbase* = "libTKXSBase.dylib"
else:
  const tkxsbase* = "libTKXSBase.so" 

include transfer/transfer_includes
include intface/interface_includes