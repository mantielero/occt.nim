{.passL:"-lTKBool".}
{.passC:"-I/usr/include/opencascade/" .}
{.experimental: "codeReordering".}


when defined(windows):
  const tkbool* = "TKBool.dll"
elif defined(macosx):
  const tkbool* = "libTKBool.dylib"
else:
  const tkbool* = "libTKBool.so"

type
  #BndHArray1OfBox* = object
  #BndBox2d* = object
  BRepClass3dSolidClassifier* = object
  #ExtremaExtPC* = object
  #ExtremaExtPC2d* = object
  #ExtremaExtFlag* = object
  #extremaExtFlagMINMAX* = object
#[ type
  BndBox* = object
  Selector* = object of RootObj
  BRepToolsReShape* = object ]#

import topopebrepbuild/topopebrepbuild_includes
import topopebrepds/topopebrepds_includes
import topopebreptool/topopebreptool_includes
export topopebrepbuild_includes, topopebrepds_includes, topopebreptool_includes
