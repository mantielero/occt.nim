import brepfilletapi_types
import ../TopoDS/topods_types
import ../Standard/standard

# /usr/include/opencascade/BRepFilletAPI_MakeFillet2d.hxx --> occt/BRepFilletAPI/BRepFilletAPI_MakeFillet2d.nim
#import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

#const sourcePath = currentSourcePath().splitPath.head
#{.passC: "-I\"/usr/include/opencascade/\"".}
#const headerBrepfilletapimakefillet2d = "/usr/include/opencascade/BRepFilletAPI_MakeFillet2d.hxx"
discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of TopoDS_Shape"

{.push header:"BRepFilletAPI_MakeFillet2d.hxx".}


proc `new`*(this: var BRepFilletAPI_MakeFillet2d; theSize: csize_t): pointer {.
    importcpp: "BRepFilletAPI_MakeFillet2d::operator new".}
proc `delete`*(this: var BRepFilletAPI_MakeFillet2d; theAddress: pointer) {.
    importcpp: "BRepFilletAPI_MakeFillet2d::operator delete".}
proc `new[]`*(this: var BRepFilletAPI_MakeFillet2d; theSize: csize_t): pointer {.
    importcpp: "BRepFilletAPI_MakeFillet2d::operator new[]".}
proc `delete[]`*(this: var BRepFilletAPI_MakeFillet2d; theAddress: pointer) {.
    importcpp: "BRepFilletAPI_MakeFillet2d::operator delete[]".}
proc `new`*(this: var BRepFilletAPI_MakeFillet2d; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRepFilletAPI_MakeFillet2d::operator new".}
proc `delete`*(this: var BRepFilletAPI_MakeFillet2d; a2: pointer; a3: pointer) {.
    importcpp: "BRepFilletAPI_MakeFillet2d::operator delete".}
proc constructBRepFilletAPI_MakeFillet2d*(): BRepFilletAPI_MakeFillet2d {.
    constructor, importcpp: "BRepFilletAPI_MakeFillet2d(@)".}
proc constructBRepFilletAPI_MakeFillet2d*(f: TopoDS_Face): BRepFilletAPI_MakeFillet2d {.
    constructor, importcpp: "BRepFilletAPI_MakeFillet2d(@)".}
proc init*(this: var BRepFilletAPI_MakeFillet2d; f: TopoDS_Face) {.importcpp: "Init".}
proc init*(this: var BRepFilletAPI_MakeFillet2d; refFace: TopoDS_Face;
          modFace: TopoDS_Face) {.importcpp: "Init".}
proc addFillet*(this: var BRepFilletAPI_MakeFillet2d; v: TopoDS_Vertex;
               radius: StandardReal): TopoDS_Edge {.importcpp: "AddFillet".}
proc modifyFillet*(this: var BRepFilletAPI_MakeFillet2d; fillet: TopoDS_Edge;
                  radius: StandardReal): TopoDS_Edge {.importcpp: "ModifyFillet".}
proc removeFillet*(this: var BRepFilletAPI_MakeFillet2d; fillet: TopoDS_Edge): TopoDS_Vertex {.
    importcpp: "RemoveFillet".}
proc addChamfer*(this: var BRepFilletAPI_MakeFillet2d; e1: TopoDS_Edge;
                e2: TopoDS_Edge; d1: StandardReal; d2: StandardReal): TopoDS_Edge {.
    importcpp: "AddChamfer".}
proc addChamfer*(this: var BRepFilletAPI_MakeFillet2d; e: TopoDS_Edge;
                v: TopoDS_Vertex; d: StandardReal; ang: StandardReal): TopoDS_Edge {.
    importcpp: "AddChamfer".}
proc modifyChamfer*(this: var BRepFilletAPI_MakeFillet2d; chamfer: TopoDS_Edge;
                   e1: TopoDS_Edge; e2: TopoDS_Edge; d1: StandardReal;
                   d2: StandardReal): TopoDS_Edge {.importcpp: "ModifyChamfer".}
proc modifyChamfer*(this: var BRepFilletAPI_MakeFillet2d; chamfer: TopoDS_Edge;
                   e: TopoDS_Edge; d: StandardReal; ang: StandardReal): TopoDS_Edge {.
    importcpp: "ModifyChamfer".}
proc removeChamfer*(this: var BRepFilletAPI_MakeFillet2d; chamfer: TopoDS_Edge): TopoDS_Vertex {.
    importcpp: "RemoveChamfer".}
proc isModified*(this: BRepFilletAPI_MakeFillet2d; e: TopoDS_Edge): StandardBoolean {.
    noSideEffect, importcpp: "IsModified".}
#[FIXME   
proc filletEdges*(this: BRepFilletAPI_MakeFillet2d): TopToolsSequenceOfShape {.
    noSideEffect, importcpp: "FilletEdges".}
]#     
proc nbFillet*(this: BRepFilletAPI_MakeFillet2d): StandardInteger {.noSideEffect,
    importcpp: "NbFillet".}
#[FIXME
proc chamferEdges*(this: BRepFilletAPI_MakeFillet2d): TopToolsSequenceOfShape {.
    noSideEffect, importcpp: "ChamferEdges".}
]#
proc nbChamfer*(this: BRepFilletAPI_MakeFillet2d): StandardInteger {.noSideEffect,
    importcpp: "NbChamfer".}
#[FIXME
proc modified*(this: var BRepFilletAPI_MakeFillet2d; s: TopoDS_Shape): TopToolsListOfShape {.
    importcpp: "Modified".}
]#
proc nbCurves*(this: BRepFilletAPI_MakeFillet2d): StandardInteger {.noSideEffect,
    importcpp: "NbCurves".}
#[FIXME
proc newEdges*(this: var BRepFilletAPI_MakeFillet2d; i: StandardInteger): TopToolsListOfShape {.
    importcpp: "NewEdges".}
]#
proc hasDescendant*(this: BRepFilletAPI_MakeFillet2d; e: TopoDS_Edge): StandardBoolean {.
    noSideEffect, importcpp: "HasDescendant".}
proc descendantEdge*(this: BRepFilletAPI_MakeFillet2d; e: TopoDS_Edge): TopoDS_Edge {.
    noSideEffect, importcpp: "DescendantEdge".}
proc basisEdge*(this: BRepFilletAPI_MakeFillet2d; e: TopoDS_Edge): TopoDS_Edge {.
    noSideEffect, importcpp: "BasisEdge".}
#[FIXME    
proc status*(this: BRepFilletAPI_MakeFillet2d): ChFi2dConstructionError {.
    noSideEffect, importcpp: "Status".}
]#
proc build*(this: var BRepFilletAPI_MakeFillet2d) {.importcpp: "Build".}
{.pop.}