import brepfilletapi_types
import ../TopoDS/topods_types
import ../Standard/standard
import ../Geom/geom_types
# /usr/include/opencascade/BRepFilletAPI_MakeFillet.hxx --> occt/BRepFilletAPI/BRepFilletAPI_MakeFillet.nim
#import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

#const sourcePath = currentSourcePath().splitPath.head
#{.passC: "-I\"/usr/include/opencascade/\"".}
#const headerBrepfilletapimakefillet = "/usr/include/opencascade/BRepFilletAPI_MakeFillet.hxx"
discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Edge"
discard "forward decl of Law_Function"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of TopOpeBRepBuild_HBuilder"
discard "forward decl of Geom_Surface"

{.push header:"BRepFilletAPI_MakeFillet.hxx".}

proc `new`*(this: var BRepFilletAPI_MakeFillet; theSize: csize_t): pointer {.
    importcpp: "BRepFilletAPI_MakeFillet::operator new".}
proc `delete`*(this: var BRepFilletAPI_MakeFillet; theAddress: pointer) {.
    importcpp: "BRepFilletAPI_MakeFillet::operator delete".}
proc `new[]`*(this: var BRepFilletAPI_MakeFillet; theSize: csize_t): pointer {.
    importcpp: "BRepFilletAPI_MakeFillet::operator new[]".}
proc `delete[]`*(this: var BRepFilletAPI_MakeFillet; theAddress: pointer) {.
    importcpp: "BRepFilletAPI_MakeFillet::operator delete[]".}
proc `new`*(this: var BRepFilletAPI_MakeFillet; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRepFilletAPI_MakeFillet::operator new".}
proc `delete`*(this: var BRepFilletAPI_MakeFillet; a2: pointer; a3: pointer) {.
    importcpp: "BRepFilletAPI_MakeFillet::operator delete".}
#[FIXME
proc MakeFillet*(s: TopoDS_Shape; fShape: ChFi3dFilletShape = chFi3dRational): BRepFilletAPI_MakeFillet {.
    constructor, importcpp: "BRepFilletAPI_MakeFillet(@)".}
]#
proc setParams*(this: var BRepFilletAPI_MakeFillet; tang: StandardReal;
               tesp: StandardReal; t2d: StandardReal; tApp3d: StandardReal;
               tolApp2d: StandardReal; fleche: StandardReal) {.
    importcpp: "SetParams".}
#[FIXME
proc setContinuity*(this: var BRepFilletAPI_MakeFillet;
                   internalContinuity: GeomAbsShape;
                   angularTolerance: StandardReal) {.importcpp: "SetContinuity".}
]#                   
proc add*(this: var BRepFilletAPI_MakeFillet; e: TopoDS_Edge) {.importcpp: "Add".}
proc add*(this: var BRepFilletAPI_MakeFillet; radius: StandardReal; e: TopoDS_Edge) {.
    importcpp: "Add".}
proc add*(this: var BRepFilletAPI_MakeFillet; r1: StandardReal; r2: StandardReal;
         e: TopoDS_Edge) {.importcpp: "Add".}
#[FIXME
proc add*(this: var BRepFilletAPI_MakeFillet; L: Handle[LawFunction]; e: TopoDS_Edge) {.
    importcpp: "Add".}
   
proc add*(this: var BRepFilletAPI_MakeFillet; uandR: TColgpArray1OfPnt2d;
         e: TopoDS_Edge) {.importcpp: "Add".}
]# 
proc setRadius*(this: var BRepFilletAPI_MakeFillet; radius: StandardReal;
               ic: StandardInteger; iinC: StandardInteger) {.importcpp: "SetRadius".}
proc setRadius*(this: var BRepFilletAPI_MakeFillet; r1: StandardReal;
               r2: StandardReal; ic: StandardInteger; iinC: StandardInteger) {.
    importcpp: "SetRadius".}
#[FIXME   
proc setRadius*(this: var BRepFilletAPI_MakeFillet; L: Handle[LawFunction];
               ic: StandardInteger; iinC: StandardInteger) {.importcpp: "SetRadius".}

proc setRadius*(this: var BRepFilletAPI_MakeFillet; uandR: TColgpArray1OfPnt2d;
               ic: StandardInteger; iinC: StandardInteger) {.importcpp: "SetRadius".}
]# 
proc resetContour*(this: var BRepFilletAPI_MakeFillet; ic: StandardInteger) {.
    importcpp: "ResetContour".}
proc isConstant*(this: var BRepFilletAPI_MakeFillet; ic: StandardInteger): StandardBoolean {.
    importcpp: "IsConstant".}
proc radius*(this: var BRepFilletAPI_MakeFillet; ic: StandardInteger): StandardReal {.
    importcpp: "Radius".}
proc isConstant*(this: var BRepFilletAPI_MakeFillet; ic: StandardInteger;
                e: TopoDS_Edge): StandardBoolean {.importcpp: "IsConstant".}
proc radius*(this: var BRepFilletAPI_MakeFillet; ic: StandardInteger; e: TopoDS_Edge): StandardReal {.
    importcpp: "Radius".}
proc setRadius*(this: var BRepFilletAPI_MakeFillet; radius: StandardReal;
               ic: StandardInteger; e: TopoDS_Edge) {.importcpp: "SetRadius".}
proc setRadius*(this: var BRepFilletAPI_MakeFillet; radius: StandardReal;
               ic: StandardInteger; v: TopoDS_Vertex) {.importcpp: "SetRadius".}
proc getBounds*(this: var BRepFilletAPI_MakeFillet; ic: StandardInteger;
               e: TopoDS_Edge; f: var StandardReal; L: var StandardReal): StandardBoolean {.
    importcpp: "GetBounds".}
#[FIXME
proc getLaw*(this: var BRepFilletAPI_MakeFillet; ic: StandardInteger; e: TopoDS_Edge): Handle[
    LawFunction] {.importcpp: "GetLaw".}

proc setLaw*(this: var BRepFilletAPI_MakeFillet; ic: StandardInteger; e: TopoDS_Edge;
            L: Handle[LawFunction]) {.importcpp: "SetLaw",
                                    header: headerBrepfilletapimakefillet.}

proc setFilletShape*(this: var BRepFilletAPI_MakeFillet; fShape: ChFi3dFilletShape) {.
    importcpp: "SetFilletShape".}

proc getFilletShape*(this: BRepFilletAPI_MakeFillet): ChFi3dFilletShape {.
    noSideEffect, importcpp: "GetFilletShape".}
]#
proc nbContours*(this: BRepFilletAPI_MakeFillet): StandardInteger {.noSideEffect,
    importcpp: "NbContours".}
proc contour*(this: BRepFilletAPI_MakeFillet; e: TopoDS_Edge): StandardInteger {.
    noSideEffect, importcpp: "Contour".}
proc nbEdges*(this: BRepFilletAPI_MakeFillet; i: StandardInteger): StandardInteger {.
    noSideEffect, importcpp: "NbEdges".}
proc edge*(this: BRepFilletAPI_MakeFillet; i: StandardInteger; j: StandardInteger): TopoDS_Edge {.
    noSideEffect, importcpp: "Edge".}
proc remove*(this: var BRepFilletAPI_MakeFillet; e: TopoDS_Edge) {.
    importcpp: "Remove".}
proc length*(this: BRepFilletAPI_MakeFillet; ic: StandardInteger): StandardReal {.
    noSideEffect, importcpp: "Length".}
proc firstVertex*(this: BRepFilletAPI_MakeFillet; ic: StandardInteger): TopoDS_Vertex {.
    noSideEffect, importcpp: "FirstVertex".}
proc lastVertex*(this: BRepFilletAPI_MakeFillet; ic: StandardInteger): TopoDS_Vertex {.
    noSideEffect, importcpp: "LastVertex".}
proc abscissa*(this: BRepFilletAPI_MakeFillet; ic: StandardInteger; v: TopoDS_Vertex): StandardReal {.
    noSideEffect, importcpp: "Abscissa".}
proc relativeAbscissa*(this: BRepFilletAPI_MakeFillet; ic: StandardInteger;
                      v: TopoDS_Vertex): StandardReal {.noSideEffect,
    importcpp: "RelativeAbscissa".}
proc closedAndTangent*(this: BRepFilletAPI_MakeFillet; ic: StandardInteger): StandardBoolean {.
    noSideEffect, importcpp: "ClosedAndTangent".}
proc closed*(this: BRepFilletAPI_MakeFillet; ic: StandardInteger): StandardBoolean {.
    noSideEffect, importcpp: "Closed".}
proc build*(this: var BRepFilletAPI_MakeFillet) {.importcpp: "Build".}
proc reset*(this: var BRepFilletAPI_MakeFillet) {.importcpp: "Reset".}
#[FIXME
proc builder*(this: BRepFilletAPI_MakeFillet): Handle[TopOpeBRepBuildHBuilder] {.
    noSideEffect, importcpp: "Builder".}

proc generated*(this: var BRepFilletAPI_MakeFillet; eorV: TopoDS_Shape): TopToolsListOfShape {.
    importcpp: "Generated".}

proc modified*(this: var BRepFilletAPI_MakeFillet; f: TopoDS_Shape): TopToolsListOfShape {.
    importcpp: "Modified".}
]#
proc isDeleted*(this: var BRepFilletAPI_MakeFillet; f: TopoDS_Shape): StandardBoolean {.
    importcpp: "IsDeleted".}
proc nbSurfaces*(this: BRepFilletAPI_MakeFillet): StandardInteger {.noSideEffect,
    importcpp: "NbSurfaces".}
#[FIXME   
proc newFaces*(this: var BRepFilletAPI_MakeFillet; i: StandardInteger): TopToolsListOfShape {.
    importcpp: "NewFaces".}
]# 
proc simulate*(this: var BRepFilletAPI_MakeFillet; ic: StandardInteger) {.
    importcpp: "Simulate".}
proc nbSurf*(this: BRepFilletAPI_MakeFillet; ic: StandardInteger): StandardInteger {.
    noSideEffect, importcpp: "NbSurf".}
#[FIXME
proc sect*(this: BRepFilletAPI_MakeFillet; ic: StandardInteger; `is`: StandardInteger): Handle[
    ChFiDS_SecHArray1] {.noSideEffect, importcpp: "Sect",
                        header: headerBrepfilletapimakefillet.}
]#
proc nbFaultyContours*(this: BRepFilletAPI_MakeFillet): StandardInteger {.
    noSideEffect, importcpp: "NbFaultyContours".}
proc faultyContour*(this: BRepFilletAPI_MakeFillet; i: StandardInteger): StandardInteger {.
    noSideEffect, importcpp: "FaultyContour".}
proc nbComputedSurfaces*(this: BRepFilletAPI_MakeFillet; ic: StandardInteger): StandardInteger {.
    noSideEffect, importcpp: "NbComputedSurfaces".}
proc computedSurface*(this: BRepFilletAPI_MakeFillet; ic: StandardInteger;
                     `is`: StandardInteger): Handle[GeomSurface] {.noSideEffect,
    importcpp: "ComputedSurface".}
proc nbFaultyVertices*(this: BRepFilletAPI_MakeFillet): StandardInteger {.
    noSideEffect, importcpp: "NbFaultyVertices".}
proc faultyVertex*(this: BRepFilletAPI_MakeFillet; iv: StandardInteger): TopoDS_Vertex {.
    noSideEffect, importcpp: "FaultyVertex".}
proc hasResult*(this: BRepFilletAPI_MakeFillet): StandardBoolean {.noSideEffect,
    importcpp: "HasResult".}
proc badShape*(this: BRepFilletAPI_MakeFillet): TopoDS_Shape {.noSideEffect,
    importcpp: "BadShape".}
#[FIXME
proc stripeStatus*(this: BRepFilletAPI_MakeFillet; ic: StandardInteger): ChFiDS_ErrorStatus {.
    noSideEffect, importcpp: "StripeStatus".}
]#    
{.pop.}    