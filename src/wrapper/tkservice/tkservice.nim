{.passL:"-lTKService".}
{.passC:"-I/usr/include/opencascade/" .}
{.experimental: "codeReordering".}

#type
#  Graphic3dGroup* = object


when defined(windows):
  const tkservice* = "TKService.dll"
elif defined(macosx):
  const tkservice* = "libTKService.dylib"
else:
  const tkservice* = "libTKService.so" 

include aspect/aspect_includes
