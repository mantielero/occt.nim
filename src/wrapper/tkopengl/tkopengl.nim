{.passL:"-lTKOpenGl".}
{.passC:"-I/usr/include/opencascade/" .}
#{.experimental: "codeReordering".}
#{.experimental: "callOperator".}

#type
#  VectorWithNullMagnitude* = object
#  #ValueType* = object



when defined(windows):
  const tkopengl* = "TKOpengl.dll"
elif defined(macosx):
  const tkopengl* = "libTKOpengl.dylib"
else:
  const tkopengl* = "libTKOpengl.so" 

import opengl/opengl_includes

export opengl_includes