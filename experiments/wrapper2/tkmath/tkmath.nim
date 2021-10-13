{.passL:"-lTKMath".}
{.passC:"-I/usr/include/opencascade/" .}
{.experimental: "codeReordering".}

when defined(windows):
  const tkmath* = "TKMath.dll"
elif defined(macosx):
  const tkmath* = "libTKMath.dylib"
else:
  const tkmath* = "libTKMath.so" 

include gp/gp_includes
