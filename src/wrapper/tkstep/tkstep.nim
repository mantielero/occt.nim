{.passL:"-lTKSTEP".}
{.passC:"-I/usr/include/opencascade/" .}
{.experimental: "codeReordering".}

#type
#  GeomUndefinedDerivative* = object
#  GeomUndefinedValue* = object
#[ type
  TColStdArray1OfReal* = object
  VectorWithNullMagnitude* = object ]#




when defined(windows):
  const tkstep* = "TKSTEP.dll"
elif defined(macosx):
  const tkstep* = "libTKSTEP.dylib"
else:
  const tkstep* = "libTKSTEP.so" 

import stepcontrol/stepcontrol_includes

export stepcontrol_includes
