{.passL:"-lTKG3d".}
{.passC:"-I/usr/include/opencascade/" .}
{.experimental: "codeReordering".}

type
  GeomUndefinedDerivative* = object
  GeomUndefinedValue* = object
#[ type
  TColStdArray1OfReal* = object
  VectorWithNullMagnitude* = object ]#

when defined(windows):
  const tkg3d* = "TKG3d.dll"
elif defined(macosx):
  const tkg3d* = "libTKG3d.dylib"
else:
  const tkg3d* = "libTKG3d.so" 

include geom/geom_includes
include topabs/topabs_includes
include adaptor3d/adaptor3d_includes
include geomadaptor/geomadaptor_includes