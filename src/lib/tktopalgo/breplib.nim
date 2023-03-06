{.passL:"-lTKTopAlgo".}
{.passC:"-I/usr/include/opencascade/" .}
import ../../wrapper/brepbuilderapi/brepbuilderapi_includes
#import ../../wrapper

type
  BRepLib* {.importcpp: "BRepLib", 
            header: "BRepLib.hxx", 
            bycopy.} = object ## ! Computes the max distance between edge
                                                              ## ! and its 2d representation on the face.
                                                              ## ! Sets the default precision.  The current Precision
                                                              ## ! is returned.
proc buildCurves3d*[T:BRepBuilderAPI_MakeWire](E: T): bool {.
    importcpp: "BRepLib::BuildCurves3d(@)", header: "BRepLib.hxx", discardable.}

#[ proc BuildCurve3d*(E: TopoDS_Edge; Tolerance: float = 1.0e-5;
                  Continuity: GeomAbs_Shape = GeomAbs_C1;
                  MaxDegree: Standard_Integer = 14; 
                  MaxSegment: Standard_Integer = 0): bool {.
    importcpp: "BRepLib::BuildCurve3d(@)", header: "BRepLib.hxx".}

proc BuildCurves3d*(S: TopoDS_Shape; Tolerance: float;
                   Continuity: GeomAbs_Shape = GeomAbs_C1;
                   MaxDegree: int = 14;
                   MaxSegment: int = 0): bool {.
    importcpp: "BRepLib::BuildCurves3d(@)", header: "BRepLib.hxx".} ]#