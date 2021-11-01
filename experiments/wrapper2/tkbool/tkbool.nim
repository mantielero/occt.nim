{.passL:"-lTKBool".}
{.passC:"-I/usr/include/opencascade/" .}
{.experimental: "codeReordering".}


when defined(windows):
  const tkbool* = "TKBool.dll"
elif defined(macosx):
  const tkbool* = "libTKBool.dylib"
else:
  const tkbool* = "libTKBool.so"

#[ type
  BndBox* = object
  Selector* = object of RootObj
  BRepToolsReShape* = object ]#

include topopebrepbuild/topopebrepbuild_includes
include topopebrepds/topopebrepds_includes