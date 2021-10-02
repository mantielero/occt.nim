{.passL:"-lTKBinXCAF -lTKCAF -lTKDCAF -lTKLCAF -lTKVCAF -lTKXCAF -lTKXmlXCAF".}
{.passL:"-lTKSTEP -lTKSTEPAttr -lTKSTEP209 -lTKSTEPBase -lTKXDESTEP"}
{.passL: "-lTKBO -lTKSTEP -lTKPrim -lTKXSBase -lTKShHealing -lTKTopAlgo -lTKGeomAlgo -lTKBRep -lTKGeomBase -lTKG3d -lTKG2d -lTKMath -lTKernel".}
{.passL:"-lTKFillet -lTKBool"}

{.passC:"-I/usr/include/opencascade/" .}
{.experimental: "codeReordering".}

include Standard/Standard_includes
include NCollection/NCollection_includes
include gp/gp_includes
include Geom/Geom_includes
include Geom2d/Geom2d_includes
include GC/GC_includes
include TopoDS/TopoDS_includes
include BRepBuilderAPI/BRepBuilderAPI_includes
include BRepPrim/BRepPrim_includes
include BRepPrimAPI/BRepPrimAPI_includes
include BRepFilletAPI/BRepFilletAPI_includes
include ChFi3d/ChFi3d_includes
include BRep/BRep_includes
#include BRepSweep/BRepSweep_includes
include TopLoc/TopLoc_includes
include TopAbs/TopAbs_includes
include TopExp/TopExp_includes
include TopTools/TopTools_includes
include BRepAlgo/BRepAlgo_includes
include GeomAbs/GeomAbs_includes
include Adaptor2d/Adaptor2d_includes
include Adaptor3d/Adaptor3d_includes

include STEPControl/STEPControl_includes
include StepData/StepData_includes
include Transfer/Transfer_includes
include XSControl/XSControl_includes
include Interface/Interface_includes
include IFSelect/IFSelect_includes