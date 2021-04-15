{.passL: "-lTKBO -lTKSTEP -lTKPrim -lTKSTEPAttr -lTKSTEP209 -lTKSTEPBase -lTKXSBase -lTKShHealing -lTKTopAlgo -lTKGeomAlgo -lTKBRep -lTKGeomBase -lTKG3d -lTKG2d -lTKMath -lTKernel".}
{.passC:"-I/usr/include/opencascade" .}

#type
#  Handle* {.importcpp: "opencascade::handle", header: "<map>".} [K] = object

include Standard/standard
include tkMath/tkmath
#include tkBRep/tkbrep
#include tkPrim/tkprim

include ModelingData/tkg3d/tkg3d
include ModelingData/tkbrep/tkbrep
#include ModelingData/tkbrep/tkbrep
#include ModelingData/tkbrep/topods
include ModelingAlgorithms/tktopalgo/tktopalgo
include tkGeomBase/tkgeombase
