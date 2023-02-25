{.passL:"-lTKOffset".}
{.passC:"-I/usr/include/opencascade/" .}

when defined(windows):
  const tkoffset* = "TKOffset.dll"
elif defined(macosx):
  const tkoffset* = "libTKOffset.dylib"
else:
  const tkoffset* = "libTKOffset.so" 

import brepoffset/brepoffset_includes


export brepoffset_includes