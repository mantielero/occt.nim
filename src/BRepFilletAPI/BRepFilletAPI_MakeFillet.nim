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

#[
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
]#

proc MakeFillet*(s: TopoDS_Shape; fShape: ChFi3dFilletShape = chFi3dRational): BRepFilletAPI_MakeFillet {.
    constructor, importcpp: "BRepFilletAPI_MakeFillet(@)".}

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


#[
type
  BRepFilletAPI_MakeFillet* {.importcpp: "BRepFilletAPI_MakeFillet",
                             header: "BRepFilletAPI_MakeFillet.hxx", bycopy.} = object of BRepFilletAPI_LocalOperation ##
                                                                                                                ## !
                                                                                                                ## Initializes
                                                                                                                ## the
                                                                                                                ## computation
                                                                                                                ## of
                                                                                                                ## the
                                                                                                                ## fillets.
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## <FShape>
                                                                                                                ## sets
                                                                                                                ## the
                                                                                                                ## type
                                                                                                                ## of
                                                                                                                ## fillet
                                                                                                                ## surface.
                                                                                                                ## The
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## default
                                                                                                                ## value
                                                                                                                ## is
                                                                                                                ## ChFi3d_Rational
                                                                                                                ## (classical
                                                                                                                ## nurbs
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## representation
                                                                                                                ## of
                                                                                                                ## circles).
                                                                                                                ## ChFi3d_QuasiAngular
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## corresponds
                                                                                                                ## to
                                                                                                                ## a
                                                                                                                ## nurbs
                                                                                                                ## representation
                                                                                                                ## of
                                                                                                                ## circles
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## which
                                                                                                                ## parameterisation
                                                                                                                ## matches
                                                                                                                ## the
                                                                                                                ## circle
                                                                                                                ## one.
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## ChFi3d_Polynomial
                                                                                                                ## corresponds
                                                                                                                ## to
                                                                                                                ## a
                                                                                                                ## polynomial
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## representation
                                                                                                                ## of
                                                                                                                ## circles.


proc constructBRepFilletAPI_MakeFillet*(S: TopoDS_Shape; FShape: ChFi3d_FilletShape = ChFi3d_Rational): BRepFilletAPI_MakeFillet {.
    constructor, importcpp: "BRepFilletAPI_MakeFillet(@)",
    header: "BRepFilletAPI_MakeFillet.hxx".}
proc SetParams*(this: var BRepFilletAPI_MakeFillet; Tang: Standard_Real;
               Tesp: Standard_Real; T2d: Standard_Real; TApp3d: Standard_Real;
               TolApp2d: Standard_Real; Fleche: Standard_Real) {.
    importcpp: "SetParams", header: "BRepFilletAPI_MakeFillet.hxx".}
proc SetContinuity*(this: var BRepFilletAPI_MakeFillet;
                   InternalContinuity: GeomAbs_Shape;
                   AngularTolerance: Standard_Real) {.importcpp: "SetContinuity",
    header: "BRepFilletAPI_MakeFillet.hxx".}
proc Add*(this: var BRepFilletAPI_MakeFillet; E: TopoDS_Edge) {.importcpp: "Add",
    header: "BRepFilletAPI_MakeFillet.hxx".}
proc Add*(this: var BRepFilletAPI_MakeFillet; Radius: Standard_Real; E: TopoDS_Edge) {.
    importcpp: "Add", header: "BRepFilletAPI_MakeFillet.hxx".}
proc Add*(this: var BRepFilletAPI_MakeFillet; R1: Standard_Real; R2: Standard_Real;
         E: TopoDS_Edge) {.importcpp: "Add", header: "BRepFilletAPI_MakeFillet.hxx".}
proc Add*(this: var BRepFilletAPI_MakeFillet; L: handle[Law_Function]; E: TopoDS_Edge) {.
    importcpp: "Add", header: "BRepFilletAPI_MakeFillet.hxx".}
proc Add*(this: var BRepFilletAPI_MakeFillet; UandR: TColgp_Array1OfPnt2d;
         E: TopoDS_Edge) {.importcpp: "Add", header: "BRepFilletAPI_MakeFillet.hxx".}
proc SetRadius*(this: var BRepFilletAPI_MakeFillet; Radius: Standard_Real;
               IC: Standard_Integer; IinC: Standard_Integer) {.
    importcpp: "SetRadius", header: "BRepFilletAPI_MakeFillet.hxx".}
proc SetRadius*(this: var BRepFilletAPI_MakeFillet; R1: Standard_Real;
               R2: Standard_Real; IC: Standard_Integer; IinC: Standard_Integer) {.
    importcpp: "SetRadius", header: "BRepFilletAPI_MakeFillet.hxx".}
proc SetRadius*(this: var BRepFilletAPI_MakeFillet; L: handle[Law_Function];
               IC: Standard_Integer; IinC: Standard_Integer) {.
    importcpp: "SetRadius", header: "BRepFilletAPI_MakeFillet.hxx".}
proc SetRadius*(this: var BRepFilletAPI_MakeFillet; UandR: TColgp_Array1OfPnt2d;
               IC: Standard_Integer; IinC: Standard_Integer) {.
    importcpp: "SetRadius", header: "BRepFilletAPI_MakeFillet.hxx".}
proc ResetContour*(this: var BRepFilletAPI_MakeFillet; IC: Standard_Integer) {.
    importcpp: "ResetContour", header: "BRepFilletAPI_MakeFillet.hxx".}
proc IsConstant*(this: var BRepFilletAPI_MakeFillet; IC: Standard_Integer): Standard_Boolean {.
    importcpp: "IsConstant", header: "BRepFilletAPI_MakeFillet.hxx".}
proc Radius*(this: var BRepFilletAPI_MakeFillet; IC: Standard_Integer): Standard_Real {.
    importcpp: "Radius", header: "BRepFilletAPI_MakeFillet.hxx".}
proc IsConstant*(this: var BRepFilletAPI_MakeFillet; IC: Standard_Integer;
                E: TopoDS_Edge): Standard_Boolean {.importcpp: "IsConstant",
    header: "BRepFilletAPI_MakeFillet.hxx".}
proc Radius*(this: var BRepFilletAPI_MakeFillet; IC: Standard_Integer; E: TopoDS_Edge): Standard_Real {.
    importcpp: "Radius", header: "BRepFilletAPI_MakeFillet.hxx".}
proc SetRadius*(this: var BRepFilletAPI_MakeFillet; Radius: Standard_Real;
               IC: Standard_Integer; E: TopoDS_Edge) {.importcpp: "SetRadius",
    header: "BRepFilletAPI_MakeFillet.hxx".}
proc SetRadius*(this: var BRepFilletAPI_MakeFillet; Radius: Standard_Real;
               IC: Standard_Integer; V: TopoDS_Vertex) {.importcpp: "SetRadius",
    header: "BRepFilletAPI_MakeFillet.hxx".}
proc GetBounds*(this: var BRepFilletAPI_MakeFillet; IC: Standard_Integer;
               E: TopoDS_Edge; F: var Standard_Real; L: var Standard_Real): Standard_Boolean {.
    importcpp: "GetBounds", header: "BRepFilletAPI_MakeFillet.hxx".}
proc GetLaw*(this: var BRepFilletAPI_MakeFillet; IC: Standard_Integer; E: TopoDS_Edge): handle[
    Law_Function] {.importcpp: "GetLaw", header: "BRepFilletAPI_MakeFillet.hxx".}
proc SetLaw*(this: var BRepFilletAPI_MakeFillet; IC: Standard_Integer; E: TopoDS_Edge;
            L: handle[Law_Function]) {.importcpp: "SetLaw",
                                     header: "BRepFilletAPI_MakeFillet.hxx".}
proc SetFilletShape*(this: var BRepFilletAPI_MakeFillet; FShape: ChFi3d_FilletShape) {.
    importcpp: "SetFilletShape", header: "BRepFilletAPI_MakeFillet.hxx".}
proc GetFilletShape*(this: BRepFilletAPI_MakeFillet): ChFi3d_FilletShape {.
    noSideEffect, importcpp: "GetFilletShape",
    header: "BRepFilletAPI_MakeFillet.hxx".}
proc NbContours*(this: BRepFilletAPI_MakeFillet): Standard_Integer {.noSideEffect,
    importcpp: "NbContours", header: "BRepFilletAPI_MakeFillet.hxx".}
proc Contour*(this: BRepFilletAPI_MakeFillet; E: TopoDS_Edge): Standard_Integer {.
    noSideEffect, importcpp: "Contour", header: "BRepFilletAPI_MakeFillet.hxx".}
proc NbEdges*(this: BRepFilletAPI_MakeFillet; I: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "NbEdges", header: "BRepFilletAPI_MakeFillet.hxx".}
proc Edge*(this: BRepFilletAPI_MakeFillet; I: Standard_Integer; J: Standard_Integer): TopoDS_Edge {.
    noSideEffect, importcpp: "Edge", header: "BRepFilletAPI_MakeFillet.hxx".}
proc Remove*(this: var BRepFilletAPI_MakeFillet; E: TopoDS_Edge) {.
    importcpp: "Remove", header: "BRepFilletAPI_MakeFillet.hxx".}
proc Length*(this: BRepFilletAPI_MakeFillet; IC: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "Length", header: "BRepFilletAPI_MakeFillet.hxx".}
proc FirstVertex*(this: BRepFilletAPI_MakeFillet; IC: Standard_Integer): TopoDS_Vertex {.
    noSideEffect, importcpp: "FirstVertex", header: "BRepFilletAPI_MakeFillet.hxx".}
proc LastVertex*(this: BRepFilletAPI_MakeFillet; IC: Standard_Integer): TopoDS_Vertex {.
    noSideEffect, importcpp: "LastVertex", header: "BRepFilletAPI_MakeFillet.hxx".}
proc Abscissa*(this: BRepFilletAPI_MakeFillet; IC: Standard_Integer; V: TopoDS_Vertex): Standard_Real {.
    noSideEffect, importcpp: "Abscissa", header: "BRepFilletAPI_MakeFillet.hxx".}
proc RelativeAbscissa*(this: BRepFilletAPI_MakeFillet; IC: Standard_Integer;
                      V: TopoDS_Vertex): Standard_Real {.noSideEffect,
    importcpp: "RelativeAbscissa", header: "BRepFilletAPI_MakeFillet.hxx".}
proc ClosedAndTangent*(this: BRepFilletAPI_MakeFillet; IC: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "ClosedAndTangent",
    header: "BRepFilletAPI_MakeFillet.hxx".}
proc Closed*(this: BRepFilletAPI_MakeFillet; IC: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "Closed", header: "BRepFilletAPI_MakeFillet.hxx".}
proc Build*(this: var BRepFilletAPI_MakeFillet) {.importcpp: "Build",
    header: "BRepFilletAPI_MakeFillet.hxx".}
proc Reset*(this: var BRepFilletAPI_MakeFillet) {.importcpp: "Reset",
    header: "BRepFilletAPI_MakeFillet.hxx".}
proc Builder*(this: BRepFilletAPI_MakeFillet): handle[TopOpeBRepBuild_HBuilder] {.
    noSideEffect, importcpp: "Builder", header: "BRepFilletAPI_MakeFillet.hxx".}
proc Generated*(this: var BRepFilletAPI_MakeFillet; EorV: TopoDS_Shape): TopTools_ListOfShape {.
    importcpp: "Generated", header: "BRepFilletAPI_MakeFillet.hxx".}
proc Modified*(this: var BRepFilletAPI_MakeFillet; F: TopoDS_Shape): TopTools_ListOfShape {.
    importcpp: "Modified", header: "BRepFilletAPI_MakeFillet.hxx".}
proc IsDeleted*(this: var BRepFilletAPI_MakeFillet; F: TopoDS_Shape): Standard_Boolean {.
    importcpp: "IsDeleted", header: "BRepFilletAPI_MakeFillet.hxx".}
proc NbSurfaces*(this: BRepFilletAPI_MakeFillet): Standard_Integer {.noSideEffect,
    importcpp: "NbSurfaces", header: "BRepFilletAPI_MakeFillet.hxx".}
proc NewFaces*(this: var BRepFilletAPI_MakeFillet; I: Standard_Integer): TopTools_ListOfShape {.
    importcpp: "NewFaces", header: "BRepFilletAPI_MakeFillet.hxx".}
proc Simulate*(this: var BRepFilletAPI_MakeFillet; IC: Standard_Integer) {.
    importcpp: "Simulate", header: "BRepFilletAPI_MakeFillet.hxx".}
proc NbSurf*(this: BRepFilletAPI_MakeFillet; IC: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "NbSurf", header: "BRepFilletAPI_MakeFillet.hxx".}
proc Sect*(this: BRepFilletAPI_MakeFillet; IC: Standard_Integer; IS: Standard_Integer): handle[
    ChFiDS_SecHArray1] {.noSideEffect, importcpp: "Sect",
                        header: "BRepFilletAPI_MakeFillet.hxx".}
proc NbFaultyContours*(this: BRepFilletAPI_MakeFillet): Standard_Integer {.
    noSideEffect, importcpp: "NbFaultyContours",
    header: "BRepFilletAPI_MakeFillet.hxx".}
proc FaultyContour*(this: BRepFilletAPI_MakeFillet; I: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "FaultyContour",
    header: "BRepFilletAPI_MakeFillet.hxx".}
proc NbComputedSurfaces*(this: BRepFilletAPI_MakeFillet; IC: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "NbComputedSurfaces",
    header: "BRepFilletAPI_MakeFillet.hxx".}
proc ComputedSurface*(this: BRepFilletAPI_MakeFillet; IC: Standard_Integer;
                     IS: Standard_Integer): handle[Geom_Surface] {.noSideEffect,
    importcpp: "ComputedSurface", header: "BRepFilletAPI_MakeFillet.hxx".}
proc NbFaultyVertices*(this: BRepFilletAPI_MakeFillet): Standard_Integer {.
    noSideEffect, importcpp: "NbFaultyVertices",
    header: "BRepFilletAPI_MakeFillet.hxx".}
proc FaultyVertex*(this: BRepFilletAPI_MakeFillet; IV: Standard_Integer): TopoDS_Vertex {.
    noSideEffect, importcpp: "FaultyVertex", header: "BRepFilletAPI_MakeFillet.hxx".}
proc HasResult*(this: BRepFilletAPI_MakeFillet): Standard_Boolean {.noSideEffect,
    importcpp: "HasResult", header: "BRepFilletAPI_MakeFillet.hxx".}
proc BadShape*(this: BRepFilletAPI_MakeFillet): TopoDS_Shape {.noSideEffect,
    importcpp: "BadShape", header: "BRepFilletAPI_MakeFillet.hxx".}
proc StripeStatus*(this: BRepFilletAPI_MakeFillet; IC: Standard_Integer): ChFiDS_ErrorStatus {.
    noSideEffect, importcpp: "StripeStatus", header: "BRepFilletAPI_MakeFillet.hxx".}    
]#