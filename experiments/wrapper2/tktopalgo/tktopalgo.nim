{.passL:"-lTKTopAlgo".}
{.passC:"-I/usr/include/opencascade/" .}
{.experimental: "codeReordering".}


when defined(windows):
  const tktopalgo* = "TKTopAlgo.dll"
elif defined(macosx):
  const tktopalgo* = "libTKTopAlgo.dylib"
else:
  const tktopalgo* = "libTKTopAlgo.so"

type
  BndBox* = object
  Selector* = object of RootObj
  BRepToolsReShape* = object

include brepbuilderapi/brepbuilderapi_includes
