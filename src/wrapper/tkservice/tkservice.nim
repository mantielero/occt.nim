{.passL:"-lTKService".}
{.passC:"-I/usr/include/opencascade/" .}
#{.experimental: "codeReordering".}




when defined(windows):
  const tkservice* = "TKService.dll"
elif defined(macosx):
  const tkservice* = "libTKService.dylib"
else:
  const tkservice* = "libTKService.so" 

import aspect/aspect_includes
import xw/xw_includes

export aspect_includes
export xw_includes