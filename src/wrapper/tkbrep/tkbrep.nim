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


import topods/topods_includes
import toptools/toptools_includes
import brep/brep_includes
import brepadaptor/brepadaptor_includes
import topexp/topexp_includes
export topods_includes, toptools_includes, brep_includes, brepadaptor_includes, topexp_includes
