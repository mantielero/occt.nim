{.passL:"-lTKernel".}
{.passC:"-I/usr/include/opencascade/" .}
{.experimental: "codeReordering".}

when defined(windows):
  const tkernel* = "TKernel.dll"
elif defined(macosx):
  const tkernel* = "libTKernel.dylib"
else:
  const tkernel* = "libTKernel.so" 
  
include standard/standard_includes
include ncollection/ncollection_includes