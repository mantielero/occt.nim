{.passL:"-lTKG3d".}
{.passC:"-I/usr/include/opencascade/" .}
{.experimental: "codeReordering".}

#type
#  GeomUndefinedDerivative* = object
#  GeomUndefinedValue* = object
#[ type
  TColStdArray1OfReal* = object
  VectorWithNullMagnitude* = object ]#

type
  StepReprRepresentation* = object
  StepGeomAxis2Placement3d* = object
  StepReprRepresentationRelationship* = object
  StepShapeShapeDefinitionRepresentation* = object
  XSControlController* = object of RootObj
  XSControlWorkSession* = object
  IFSelectReturnStatus* = object #<<---------- ELIMINAR
  XSControlReader* = object of RootObj
  StepDataStepModel* = object


when defined(windows):
  const tkstep* = "TKSTEP.dll"
elif defined(macosx):
  const tkstep* = "libTKSTEP.dylib"
else:
  const tkstep* = "libTKSTEP.so" 

include stepcontrol/stepcontrol_includes
