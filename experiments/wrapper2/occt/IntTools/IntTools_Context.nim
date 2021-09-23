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

import
  ../Standard/Standard, ../Standard/Standard_Type,
  ../NCollection/NCollection_BaseAllocator, ../NCollection/NCollection_DataMap,
  ../TopTools/TopTools_ShapeMapHasher, ../Standard/Standard_Integer,
  ../Standard/Standard_Real, ../Precision/Precision,
  ../Standard/Standard_Transient, ../TopAbs/TopAbs_State,
  ../Standard/Standard_Boolean, ../BRepAdaptor/BRepAdaptor_Surface,
  ../TColStd/TColStd_MapTransientHasher

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
  IntTools_Context* {.importcpp: "IntTools_Context",
                     header: "IntTools_Context.hxx", bycopy.} = object of Standard_Transient ##
                                                                                      ## !
                                                                                      ## Clears
                                                                                      ## map
                                                                                      ## of
                                                                                      ## already
                                                                                      ## cached
                                                                                      ## projectors.
    ##  Map of oriented bounding boxes


proc constructIntTools_Context*(): IntTools_Context {.constructor,
    importcpp: "IntTools_Context(@)", header: "IntTools_Context.hxx".}
proc destroyIntTools_Context*(this: var IntTools_Context) {.
    importcpp: "#.~IntTools_Context()", header: "IntTools_Context.hxx".}
proc constructIntTools_Context*(theAllocator: handle[NCollection_BaseAllocator]): IntTools_Context {.
    constructor, importcpp: "IntTools_Context(@)", header: "IntTools_Context.hxx".}
proc FClass2d*(this: var IntTools_Context; aF: TopoDS_Face): var IntTools_FClass2d {.
    importcpp: "FClass2d", header: "IntTools_Context.hxx".}
proc ProjPS*(this: var IntTools_Context; aF: TopoDS_Face): var GeomAPI_ProjectPointOnSurf {.
    importcpp: "ProjPS", header: "IntTools_Context.hxx".}
proc ProjPC*(this: var IntTools_Context; aE: TopoDS_Edge): var GeomAPI_ProjectPointOnCurve {.
    importcpp: "ProjPC", header: "IntTools_Context.hxx".}
proc ProjPT*(this: var IntTools_Context; aC: handle[Geom_Curve]): var GeomAPI_ProjectPointOnCurve {.
    importcpp: "ProjPT", header: "IntTools_Context.hxx".}
proc SurfaceData*(this: var IntTools_Context; aF: TopoDS_Face): var IntTools_SurfaceRangeLocalizeData {.
    importcpp: "SurfaceData", header: "IntTools_Context.hxx".}
proc SolidClassifier*(this: var IntTools_Context; aSolid: TopoDS_Solid): var BRepClass3d_SolidClassifier {.
    importcpp: "SolidClassifier", header: "IntTools_Context.hxx".}
proc Hatcher*(this: var IntTools_Context; aF: TopoDS_Face): var Geom2dHatch_Hatcher {.
    importcpp: "Hatcher", header: "IntTools_Context.hxx".}
proc SurfaceAdaptor*(this: var IntTools_Context; theFace: TopoDS_Face): var BRepAdaptor_Surface {.
    importcpp: "SurfaceAdaptor", header: "IntTools_Context.hxx".}
proc OBB*(this: var IntTools_Context; theShape: TopoDS_Shape;
         theFuzzyValue: Standard_Real = Confusion()): var Bnd_OBB {.importcpp: "OBB",
    header: "IntTools_Context.hxx".}
proc UVBounds*(this: var IntTools_Context; theFace: TopoDS_Face;
              UMin: var Standard_Real; UMax: var Standard_Real;
              VMin: var Standard_Real; VMax: var Standard_Real) {.
    importcpp: "UVBounds", header: "IntTools_Context.hxx".}
proc ComputePE*(this: var IntTools_Context; theP: gp_Pnt; theTolP: Standard_Real;
               theE: TopoDS_Edge; theT: var Standard_Real; theDist: var Standard_Real): Standard_Integer {.
    importcpp: "ComputePE", header: "IntTools_Context.hxx".}
proc ComputeVE*(this: var IntTools_Context; theV: TopoDS_Vertex; theE: TopoDS_Edge;
               theT: var Standard_Real; theTol: var Standard_Real;
               theFuzz: Standard_Real = Confusion()): Standard_Integer {.
    importcpp: "ComputeVE", header: "IntTools_Context.hxx".}
proc ComputeVF*(this: var IntTools_Context; theVertex: TopoDS_Vertex;
               theFace: TopoDS_Face; theU: var Standard_Real;
               theV: var Standard_Real; theTol: var Standard_Real;
               theFuzz: Standard_Real = Confusion()): Standard_Integer {.
    importcpp: "ComputeVF", header: "IntTools_Context.hxx".}
proc StatePointFace*(this: var IntTools_Context; aF: TopoDS_Face; aP2D: gp_Pnt2d): TopAbs_State {.
    importcpp: "StatePointFace", header: "IntTools_Context.hxx".}
proc IsPointInFace*(this: var IntTools_Context; aF: TopoDS_Face; aP2D: gp_Pnt2d): Standard_Boolean {.
    importcpp: "IsPointInFace", header: "IntTools_Context.hxx".}
proc IsPointInFace*(this: var IntTools_Context; aP3D: gp_Pnt; aF: TopoDS_Face;
                   aTol: Standard_Real): Standard_Boolean {.
    importcpp: "IsPointInFace", header: "IntTools_Context.hxx".}
proc IsPointInOnFace*(this: var IntTools_Context; aF: TopoDS_Face; aP2D: gp_Pnt2d): Standard_Boolean {.
    importcpp: "IsPointInOnFace", header: "IntTools_Context.hxx".}
proc IsValidPointForFace*(this: var IntTools_Context; aP3D: gp_Pnt; aF: TopoDS_Face;
                         aTol: Standard_Real): Standard_Boolean {.
    importcpp: "IsValidPointForFace", header: "IntTools_Context.hxx".}
proc IsValidPointForFaces*(this: var IntTools_Context; aP3D: gp_Pnt; aF1: TopoDS_Face;
                          aF2: TopoDS_Face; aTol: Standard_Real): Standard_Boolean {.
    importcpp: "IsValidPointForFaces", header: "IntTools_Context.hxx".}
proc IsValidBlockForFace*(this: var IntTools_Context; aT1: Standard_Real;
                         aT2: Standard_Real; aIC: IntTools_Curve; aF: TopoDS_Face;
                         aTol: Standard_Real): Standard_Boolean {.
    importcpp: "IsValidBlockForFace", header: "IntTools_Context.hxx".}
proc IsValidBlockForFaces*(this: var IntTools_Context; aT1: Standard_Real;
                          aT2: Standard_Real; aIC: IntTools_Curve; aF1: TopoDS_Face;
                          aF2: TopoDS_Face; aTol: Standard_Real): Standard_Boolean {.
    importcpp: "IsValidBlockForFaces", header: "IntTools_Context.hxx".}
proc IsVertexOnLine*(this: var IntTools_Context; aV: TopoDS_Vertex;
                    aIC: IntTools_Curve; aTolC: Standard_Real; aT: var Standard_Real): Standard_Boolean {.
    importcpp: "IsVertexOnLine", header: "IntTools_Context.hxx".}
proc IsVertexOnLine*(this: var IntTools_Context; aV: TopoDS_Vertex;
                    aTolV: Standard_Real; aIC: IntTools_Curve; aTolC: Standard_Real;
                    aT: var Standard_Real): Standard_Boolean {.
    importcpp: "IsVertexOnLine", header: "IntTools_Context.hxx".}
proc ProjectPointOnEdge*(this: var IntTools_Context; aP: gp_Pnt; aE: TopoDS_Edge;
                        aT: var Standard_Real): Standard_Boolean {.
    importcpp: "ProjectPointOnEdge", header: "IntTools_Context.hxx".}
proc BndBox*(this: var IntTools_Context; theS: TopoDS_Shape): var Bnd_Box {.
    importcpp: "BndBox", header: "IntTools_Context.hxx".}
proc IsInfiniteFace*(this: var IntTools_Context; theFace: TopoDS_Face): Standard_Boolean {.
    importcpp: "IsInfiniteFace", header: "IntTools_Context.hxx".}
proc SetPOnSProjectionTolerance*(this: var IntTools_Context; theValue: Standard_Real) {.
    importcpp: "SetPOnSProjectionTolerance", header: "IntTools_Context.hxx".}
type
  IntTools_Contextbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "IntTools_Context::get_type_name(@)",
                              header: "IntTools_Context.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IntTools_Context::get_type_descriptor(@)",
    header: "IntTools_Context.hxx".}
proc DynamicType*(this: IntTools_Context): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "IntTools_Context.hxx".}
discard "forward decl of IntTools_Context"
type
  Handle_IntTools_Context* = handle[IntTools_Context]
