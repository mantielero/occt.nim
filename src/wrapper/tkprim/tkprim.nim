{.passL:"-lTKPrim".}
{.passC:"-I/usr/include/opencascade/" .}
#{.experimental: "codeReordering".}


when defined(windows):
  const tkprim* = "TKPrim.dll"
elif defined(macosx):
  const tkprim* = "libTKPrim.dylib"
else:
  const tkprim* = "libTKPrim.so"




import brepprim/brepprim_includes
import brepprimapi/brepprimapi_includes

export brepprim_includes, brepprimapi_includes
