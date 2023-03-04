import brepextrema_types
import ../tkbrep/topods/topods_types
import ../extrema/extrema_types
import ../tkernel/message/message_types
import ../tkmath/gp/gp_types
import ../tkernel/standard/standard_types

## This class provides tools to compute minimum distance between two Shapes (Compound,CompSolid, Solid, Shell, Face, Wire, Edge, Vertex).

proc newBRepExtrema_DistShapeShape*(): BRepExtrema_DistShapeShape {.cdecl,
    importcpp: "new BRepExtrema_DistShapeShape(@)",
    header: "BRepExtrema_DistShapeShape.hxx".}

proc newBRepExtrema_DistShapeShape*(Shape1: TopoDS_Shape; Shape2: TopoDS_Shape;
                                   F: Extrema_ExtFlag = extremaExtFlagMINMAX;
                                   A: Extrema_ExtAlgo = extremaExtAlgoGrad;
    theRange: Message_ProgressRange = Message_ProgressRange()): BRepExtrema_DistShapeShape {.
    cdecl, constructor, importcpp: "BRepExtrema_DistShapeShape(@)",
    header: "BRepExtrema_DistShapeShape.hxx".}
proc newBRepExtrema_DistShapeShape*(Shape1: TopoDS_Shape; Shape2: TopoDS_Shape;
                                   theDeflection: cfloat;
                                   F: Extrema_ExtFlag = extremaExtFlagMINMAX;
                                   A: Extrema_ExtAlgo = extremaExtAlgoGrad;
    theRange: Message_ProgressRange = Message_ProgressRange()): BRepExtrema_DistShapeShape {.
    cdecl, constructor, importcpp: "BRepExtrema_DistShapeShape(@)",
    header: "BRepExtrema_DistShapeShape.hxx".}
proc SetDeflection*(this: var BRepExtrema_DistShapeShape; theDeflection: cfloat) {.
    cdecl, importcpp: "SetDeflection", header: "BRepExtrema_DistShapeShape.hxx".}

proc loadS1*(this: var BRepExtrema_DistShapeShape; Shape1: TopoDS_Shape) {.cdecl,
    importcpp: "LoadS1", header: "BRepExtrema_DistShapeShape.hxx".}
  ## load first shape into extrema

proc LoadS2*(this: var BRepExtrema_DistShapeShape; Shape1: TopoDS_Shape) {.cdecl,
    importcpp: "LoadS2", header: "BRepExtrema_DistShapeShape.hxx".}

proc Perform*(this: var BRepExtrema_DistShapeShape;
             theRange: Message_ProgressRange = Message_ProgressRange()): bool {.
    cdecl, importcpp: "Perform", header: "BRepExtrema_DistShapeShape.hxx".}
proc IsDone*(this: BRepExtrema_DistShapeShape): bool {.noSideEffect, cdecl,
    importcpp: "IsDone", header: "BRepExtrema_DistShapeShape.hxx".}
proc NbSolution*(this: BRepExtrema_DistShapeShape): cint {.noSideEffect, cdecl,
    importcpp: "NbSolution", header: "BRepExtrema_DistShapeShape.hxx".}
proc Value*(this: BRepExtrema_DistShapeShape): cfloat {.noSideEffect, cdecl,
    importcpp: "Value", header: "BRepExtrema_DistShapeShape.hxx".}
proc InnerSolution*(this: BRepExtrema_DistShapeShape): bool {.noSideEffect, cdecl,
    importcpp: "InnerSolution", header: "BRepExtrema_DistShapeShape.hxx".}
proc PointOnShape1*(this: BRepExtrema_DistShapeShape; N: cint): PntObj {.noSideEffect,
    cdecl, importcpp: "PointOnShape1", header: "BRepExtrema_DistShapeShape.hxx".}
proc PointOnShape2*(this: BRepExtrema_DistShapeShape; N: cint): PntObj {.noSideEffect,
    cdecl, importcpp: "PointOnShape2", header: "BRepExtrema_DistShapeShape.hxx".}
proc SupportTypeShape1*(this: BRepExtrema_DistShapeShape; N: cint): BRepExtrema_SupportType {.
    noSideEffect, cdecl, importcpp: "SupportTypeShape1",
    header: "BRepExtrema_DistShapeShape.hxx".}
proc SupportTypeShape2*(this: BRepExtrema_DistShapeShape; N: cint): BRepExtrema_SupportType {.
    noSideEffect, cdecl, importcpp: "SupportTypeShape2",
    header: "BRepExtrema_DistShapeShape.hxx".}
proc SupportOnShape1*(this: BRepExtrema_DistShapeShape; N: cint): TopoDS_Shape {.
    noSideEffect, cdecl, importcpp: "SupportOnShape1",
    header: "BRepExtrema_DistShapeShape.hxx".}
proc SupportOnShape2*(this: BRepExtrema_DistShapeShape; N: cint): TopoDS_Shape {.
    noSideEffect, cdecl, importcpp: "SupportOnShape2",
    header: "BRepExtrema_DistShapeShape.hxx".}
proc ParOnEdgeS1*(this: BRepExtrema_DistShapeShape; N: cint; t: var cfloat) {.
    noSideEffect, cdecl, importcpp: "ParOnEdgeS1",
    header: "BRepExtrema_DistShapeShape.hxx".}
proc ParOnEdgeS2*(this: BRepExtrema_DistShapeShape; N: cint; t: var cfloat) {.
    noSideEffect, cdecl, importcpp: "ParOnEdgeS2",
    header: "BRepExtrema_DistShapeShape.hxx".}
proc ParOnFaceS1*(this: BRepExtrema_DistShapeShape; N: cint; u: var cfloat;
                 v: var cfloat) {.noSideEffect, cdecl, importcpp: "ParOnFaceS1",
                               header: "BRepExtrema_DistShapeShape.hxx".}
proc ParOnFaceS2*(this: BRepExtrema_DistShapeShape; N: cint; u: var cfloat;
                 v: var cfloat) {.noSideEffect, cdecl, importcpp: "ParOnFaceS2",
                               header: "BRepExtrema_DistShapeShape.hxx".}
proc Dump*(this: BRepExtrema_DistShapeShape; o: var Standard_OStream) {.noSideEffect,
    cdecl, importcpp: "Dump", header: "BRepExtrema_DistShapeShape.hxx".}
proc SetFlag*(this: var BRepExtrema_DistShapeShape; F: Extrema_ExtFlag) {.cdecl,
    importcpp: "SetFlag", header: "BRepExtrema_DistShapeShape.hxx".}
proc SetAlgo*(this: var BRepExtrema_DistShapeShape; A: Extrema_ExtAlgo) {.cdecl,
    importcpp: "SetAlgo", header: "BRepExtrema_DistShapeShape.hxx".}
proc SetMultiThread*(this: var BRepExtrema_DistShapeShape; theIsMultiThread: bool) {.
    cdecl, importcpp: "SetMultiThread", header: "BRepExtrema_DistShapeShape.hxx".}
proc IsMultiThread*(this: BRepExtrema_DistShapeShape): bool {.noSideEffect, cdecl,
    importcpp: "IsMultiThread", header: "BRepExtrema_DistShapeShape.hxx".}