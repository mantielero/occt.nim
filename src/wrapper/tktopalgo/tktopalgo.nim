{.passL:"-lTKTopAlgo".}
{.passC:"-I/usr/include/opencascade/" .}
#{.experimental: "codeReordering".}


when defined(windows):
  const tktopalgo* = "TKTopAlgo.dll"
elif defined(macosx):
  const tktopalgo* = "libTKTopAlgo.dylib"
else:
  const tktopalgo* = "libTKTopAlgo.so"



import brepbuilderapi/brepbuilderapi_includes
export brepbuilderapi_includes

import breplib/breplib_includes
export breplib_includes
