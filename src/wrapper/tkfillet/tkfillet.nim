{.passL:"-lTKFillet".}
{.passC:"-I/usr/include/opencascade/" .}
{.experimental: "codeReordering".}


when defined(windows):
  const tkfillet* = "TKFillet.dll"
elif defined(macosx):
  const tkfillet* = "libTKFillet.dylib"
else:
  const tkfillet* = "libTKFillet.so"

#[ type
  BndBox* = object
  Selector* = object of RootObj
  BRepToolsReShape* = object ]#

include brepfilletapi/brepfilletapi_includes
include chfids/chfids_includes
include chfi3d/chfi3d_includes
include chfi2d/chfi2d_includes
include brepblend/brepblend_includes
include blend/blend_includes
include blendfunc/blendfunc_includes