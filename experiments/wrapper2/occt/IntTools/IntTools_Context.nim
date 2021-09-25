##  Created by: Peter KURNEV
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.

discard "forward decl of IntTools_FClass2d"
discard "forward decl of TopoDS_Face"
discard "forward decl of GeomAPI_ProjectPointOnSurf"
discard "forward decl of GeomAPI_ProjectPointOnCurve"
discard "forward decl of TopoDS_Edge"
discard "forward decl of Geom_Curve"
discard "forward decl of IntTools_SurfaceRangeLocalizeData"
discard "forward decl of BRepClass3d_SolidClassifier"
discard "forward decl of TopoDS_Solid"
discard "forward decl of Geom2dHatch_Hatcher"
discard "forward decl of gp_Pnt"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of gp_Pnt2d"
discard "forward decl of IntTools_Curve"
discard "forward decl of Bnd_Box"
discard "forward decl of TopoDS_Shape"
discard "forward decl of Bnd_OBB"
type
  IntToolsContext* {.importcpp: "IntTools_Context", header: "IntTools_Context.hxx",
                    bycopy.} = object of StandardTransient ## ! Clears map of already cached projectors.
    ##  Map of oriented bounding boxes


proc constructIntToolsContext*(): IntToolsContext {.constructor,
    importcpp: "IntTools_Context(@)", header: "IntTools_Context.hxx".}
proc destroyIntToolsContext*(this: var IntToolsContext) {.
    importcpp: "#.~IntTools_Context()", header: "IntTools_Context.hxx".}
proc constructIntToolsContext*(theAllocator: Handle[NCollectionBaseAllocator]): IntToolsContext {.
    constructor, importcpp: "IntTools_Context(@)", header: "IntTools_Context.hxx".}
proc fClass2d*(this: var IntToolsContext; aF: TopoDS_Face): var IntToolsFClass2d {.
    importcpp: "FClass2d", header: "IntTools_Context.hxx".}
proc projPS*(this: var IntToolsContext; aF: TopoDS_Face): var GeomAPI_ProjectPointOnSurf {.
    importcpp: "ProjPS", header: "IntTools_Context.hxx".}
proc projPC*(this: var IntToolsContext; aE: TopoDS_Edge): var GeomAPI_ProjectPointOnCurve {.
    importcpp: "ProjPC", header: "IntTools_Context.hxx".}
proc projPT*(this: var IntToolsContext; aC: Handle[GeomCurve]): var GeomAPI_ProjectPointOnCurve {.
    importcpp: "ProjPT", header: "IntTools_Context.hxx".}
proc surfaceData*(this: var IntToolsContext; aF: TopoDS_Face): var IntToolsSurfaceRangeLocalizeData {.
    importcpp: "SurfaceData", header: "IntTools_Context.hxx".}
proc solidClassifier*(this: var IntToolsContext; aSolid: TopoDS_Solid): var BRepClass3dSolidClassifier {.
    importcpp: "SolidClassifier", header: "IntTools_Context.hxx".}
proc hatcher*(this: var IntToolsContext; aF: TopoDS_Face): var Geom2dHatchHatcher {.
    importcpp: "Hatcher", header: "IntTools_Context.hxx".}
proc surfaceAdaptor*(this: var IntToolsContext; theFace: TopoDS_Face): var BRepAdaptorSurface {.
    importcpp: "SurfaceAdaptor", header: "IntTools_Context.hxx".}
proc obb*(this: var IntToolsContext; theShape: TopoDS_Shape;
         theFuzzyValue: float = confusion()): var BndOBB {.importcpp: "OBB",
    header: "IntTools_Context.hxx".}
proc uVBounds*(this: var IntToolsContext; theFace: TopoDS_Face; uMin: var float;
              uMax: var float; vMin: var float; vMax: var float) {.importcpp: "UVBounds",
    header: "IntTools_Context.hxx".}
proc computePE*(this: var IntToolsContext; theP: Pnt; theTolP: float; theE: TopoDS_Edge;
               theT: var float; theDist: var float): int {.importcpp: "ComputePE",
    header: "IntTools_Context.hxx".}
proc computeVE*(this: var IntToolsContext; theV: TopoDS_Vertex; theE: TopoDS_Edge;
               theT: var float; theTol: var float; theFuzz: float = confusion()): int {.
    importcpp: "ComputeVE", header: "IntTools_Context.hxx".}
proc computeVF*(this: var IntToolsContext; theVertex: TopoDS_Vertex;
               theFace: TopoDS_Face; theU: var float; theV: var float;
               theTol: var float; theFuzz: float = confusion()): int {.
    importcpp: "ComputeVF", header: "IntTools_Context.hxx".}
proc statePointFace*(this: var IntToolsContext; aF: TopoDS_Face; aP2D: Pnt2d): TopAbsState {.
    importcpp: "StatePointFace", header: "IntTools_Context.hxx".}
proc isPointInFace*(this: var IntToolsContext; aF: TopoDS_Face; aP2D: Pnt2d): bool {.
    importcpp: "IsPointInFace", header: "IntTools_Context.hxx".}
proc isPointInFace*(this: var IntToolsContext; aP3D: Pnt; aF: TopoDS_Face; aTol: float): bool {.
    importcpp: "IsPointInFace", header: "IntTools_Context.hxx".}
proc isPointInOnFace*(this: var IntToolsContext; aF: TopoDS_Face; aP2D: Pnt2d): bool {.
    importcpp: "IsPointInOnFace", header: "IntTools_Context.hxx".}
proc isValidPointForFace*(this: var IntToolsContext; aP3D: Pnt; aF: TopoDS_Face;
                         aTol: float): bool {.importcpp: "IsValidPointForFace",
    header: "IntTools_Context.hxx".}
proc isValidPointForFaces*(this: var IntToolsContext; aP3D: Pnt; aF1: TopoDS_Face;
                          aF2: TopoDS_Face; aTol: float): bool {.
    importcpp: "IsValidPointForFaces", header: "IntTools_Context.hxx".}
proc isValidBlockForFace*(this: var IntToolsContext; aT1: float; aT2: float;
                         aIC: IntToolsCurve; aF: TopoDS_Face; aTol: float): bool {.
    importcpp: "IsValidBlockForFace", header: "IntTools_Context.hxx".}
proc isValidBlockForFaces*(this: var IntToolsContext; aT1: float; aT2: float;
                          aIC: IntToolsCurve; aF1: TopoDS_Face; aF2: TopoDS_Face;
                          aTol: float): bool {.importcpp: "IsValidBlockForFaces",
    header: "IntTools_Context.hxx".}
proc isVertexOnLine*(this: var IntToolsContext; aV: TopoDS_Vertex; aIC: IntToolsCurve;
                    aTolC: float; aT: var float): bool {.importcpp: "IsVertexOnLine",
    header: "IntTools_Context.hxx".}
proc isVertexOnLine*(this: var IntToolsContext; aV: TopoDS_Vertex; aTolV: float;
                    aIC: IntToolsCurve; aTolC: float; aT: var float): bool {.
    importcpp: "IsVertexOnLine", header: "IntTools_Context.hxx".}
proc projectPointOnEdge*(this: var IntToolsContext; aP: Pnt; aE: TopoDS_Edge;
                        aT: var float): bool {.importcpp: "ProjectPointOnEdge",
    header: "IntTools_Context.hxx".}
proc bndBox*(this: var IntToolsContext; theS: TopoDS_Shape): var BndBox {.
    importcpp: "BndBox", header: "IntTools_Context.hxx".}
proc isInfiniteFace*(this: var IntToolsContext; theFace: TopoDS_Face): bool {.
    importcpp: "IsInfiniteFace", header: "IntTools_Context.hxx".}
proc setPOnSProjectionTolerance*(this: var IntToolsContext; theValue: float) {.
    importcpp: "SetPOnSProjectionTolerance", header: "IntTools_Context.hxx".}
type
  IntToolsContextbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "IntTools_Context::get_type_name(@)",
                            header: "IntTools_Context.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IntTools_Context::get_type_descriptor(@)",
    header: "IntTools_Context.hxx".}
proc dynamicType*(this: IntToolsContext): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IntTools_Context.hxx".}
discard "forward decl of IntTools_Context"
type
  HandleIntToolsContext* = Handle[IntToolsContext]

