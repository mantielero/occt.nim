{.passL:"-lTKBRep".}
{.passC:"-I/usr/include/opencascade/" .}
{.experimental: "codeReordering".}


when defined(windows):
  const tkbrep* = "TKBRep.dll"
elif defined(macosx):
  const tkbrep* = "libTKBRep.dylib"
else:
  const tkbrep* = "libTKBRep.so"


type
  TopoDS_FrozenShape* = object
  TopoDS_LockedShape* = object
  TopoDS_UnCompatibleShapes* = object


include topods/topods_includes
include toptools/toptools_includes
include brep/brep_includes