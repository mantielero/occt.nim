import brepfilletapi_types
import ../TopoDS/topods_types
import ../Standard/standard

# /usr/include/opencascade/BRepFilletAPI_LocalOperation.hxx --> occt/BRepFilletAPI/BRepFilletAPI_LocalOperation.nim
#import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

#const sourcePath = currentSourcePath().splitPath.head
#{.passC: "-I\"/usr/include/opencascade/\"".}
const headerBrepfilletapilocaloperation = "/usr/include/opencascade/BRepFilletAPI_LocalOperation.hxx"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Vertex"

{.push header: "BRepFilletAPI_LocalOperation.hxx"}
proc `new`*(this: var BRepFilletAPI_LocalOperation; theSize: csize_t): pointer {.
    importcpp: "BRepFilletAPI_LocalOperation::operator new".}
proc `delete`*(this: var BRepFilletAPI_LocalOperation; theAddress: pointer) {.
    importcpp: "BRepFilletAPI_LocalOperation::operator delete".}
proc `new[]`*(this: var BRepFilletAPI_LocalOperation; theSize: csize_t): pointer {.
    importcpp: "BRepFilletAPI_LocalOperation::operator new[]".}
proc `delete[]`*(this: var BRepFilletAPI_LocalOperation; theAddress: pointer) {.
    importcpp: "BRepFilletAPI_LocalOperation::operator delete[]".}
proc `new`*(this: var BRepFilletAPI_LocalOperation; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRepFilletAPI_LocalOperation::operator new".}
proc `delete`*(this: var BRepFilletAPI_LocalOperation; a2: pointer; a3: pointer) {.
    importcpp: "BRepFilletAPI_LocalOperation::operator delete".}
proc add*(this: var BRepFilletAPI_LocalOperation; e: TopoDS_Edge) {.importcpp: "Add".}
proc resetContour*(this: var BRepFilletAPI_LocalOperation; ic: StandardInteger) {.
    importcpp: "ResetContour".}
proc nbContours*(this: BRepFilletAPI_LocalOperation): StandardInteger {.
    noSideEffect, importcpp: "NbContours".}
proc contour*(this: BRepFilletAPI_LocalOperation; e: TopoDS_Edge): StandardInteger {.
    noSideEffect, importcpp: "Contour".}
proc nbEdges*(this: BRepFilletAPI_LocalOperation; i: StandardInteger): StandardInteger {.
    noSideEffect, importcpp: "NbEdges".}
proc edge*(this: BRepFilletAPI_LocalOperation; i: StandardInteger; j: StandardInteger): TopoDS_Edge {.
    noSideEffect, importcpp: "Edge".}
proc remove*(this: var BRepFilletAPI_LocalOperation; e: TopoDS_Edge) {.
    importcpp: "Remove".}
proc length*(this: BRepFilletAPI_LocalOperation; ic: StandardInteger): StandardReal {.
    noSideEffect, importcpp: "Length".}
proc firstVertex*(this: BRepFilletAPI_LocalOperation; ic: StandardInteger): TopoDS_Vertex {.
    noSideEffect, importcpp: "FirstVertex".}
proc lastVertex*(this: BRepFilletAPI_LocalOperation; ic: StandardInteger): TopoDS_Vertex {.
    noSideEffect, importcpp: "LastVertex".}
proc abscissa*(this: BRepFilletAPI_LocalOperation; ic: StandardInteger;
              v: TopoDS_Vertex): StandardReal {.noSideEffect, importcpp: "Abscissa".}
proc relativeAbscissa*(this: BRepFilletAPI_LocalOperation; ic: StandardInteger;
                      v: TopoDS_Vertex): StandardReal {.noSideEffect,
    importcpp: "RelativeAbscissa".}
proc closedAndTangent*(this: BRepFilletAPI_LocalOperation; ic: StandardInteger): StandardBoolean {.
    noSideEffect, importcpp: "ClosedAndTangent".}
proc closed*(this: BRepFilletAPI_LocalOperation; ic: StandardInteger): StandardBoolean {.
    noSideEffect, importcpp: "Closed".}
proc reset*(this: var BRepFilletAPI_LocalOperation) {.importcpp: "Reset".}
proc simulate*(this: var BRepFilletAPI_LocalOperation; ic: StandardInteger) {.
    importcpp: "Simulate".}
proc nbSurf*(this: BRepFilletAPI_LocalOperation; ic: StandardInteger): StandardInteger {.
    noSideEffect, importcpp: "NbSurf".}
#[FIXME
proc sect*(this: BRepFilletAPI_LocalOperation; ic: StandardInteger;
          `is`: StandardInteger): Handle[ChFiDS_SecHArray1] {.noSideEffect,
    importcpp: "Sect".}
]#
{.pop.}