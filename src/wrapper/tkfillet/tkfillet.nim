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

import brepfilletapi/brepfilletapi_includes
import chfids/chfids_includes
import chfi3d/chfi3d_includes
import chfi2d/chfi2d_includes
import brepblend/brepblend_includes
import blend/blend_includes
import blendfunc/blendfunc_includes
export brepfilletapi_includes, chfids_includes, chfi3d_includes, chfi2d_includes, brepblend_includes, blend_includes, blendfunc_includes
