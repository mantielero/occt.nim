{.passL:"-lTKPrim".}
{.passC:"-I/usr/include/opencascade/" .}
{.experimental: "codeReordering".}


when defined(windows):
  const tkprim* = "TKPrim.dll"
elif defined(macosx):
  const tkprim* = "libTKPrim.dylib"
else:
  const tkprim* = "libTKPrim.so"


type
  BRepSweepPrism* = object
  BRepSweepRevol* = object

include brepprim/brepprim_includes
include brepprimapi/brepprimapi_includes
