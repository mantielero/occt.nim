{.passL:"-lTKMath".}
{.passC:"-I/usr/include/opencascade/" .}
{.experimental: "codeReordering".}

#[ type
  TColStdArray1OfReal* = object
  VectorWithNullMagnitude* = object ]#

#[ when defined(windows):
  const tkmath* = "TKMath.dll"
elif defined(macosx):
  const tkmath* = "libTKMath.dylib"
else:
  const tkmath* = "libTKMath.so"  ]#

include gc/gc_includes
include gce/gce_includes