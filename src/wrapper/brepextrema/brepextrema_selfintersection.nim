import brepextrema_types
import ../tkbrep/topods/topods_types
import ../tkernel/standard/standard_types
import ../tkmath/bvh/bvh_types
##  Created on: 2015-04-26
##  Created by: Denis BOGOLEPOV
##  Copyright (c) 2015 OPEN CASCADE SAS
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

## ! Tool class for detection of self-sections in the given shape.
## ! This class is based on BRepExtrema_OverlapTool and thus uses
## ! shape tessellation to detect incorrect mesh fragments (pairs
## ! of overlapped triangles belonging to different faces). Thus,
## ! a result depends critically on the quality of mesh generator
## ! (e.g., BREP mesh is not always a good choice, because it can
## ! contain gaps between adjacent face triangulations, which may
## ! not share vertices on common edge; thus false overlap can be
## ! detected). As a result, this tool can be used for relatively
## ! fast approximated test which provides sub-set of potentially
## ! overlapped faces.


proc newBRepExtrema_SelfIntersection*(theTolerance: cfloat = 0.0): BRepExtrema_SelfIntersection {.
    cdecl, constructor, importcpp: "BRepExtrema_SelfIntersection(@)",
    header: "BRepExtrema_SelfIntersection.hxx".}
proc newBRepExtrema_SelfIntersection*(theShape: TopoDS_Shape;
                                     theTolerance: cfloat = 0.0): BRepExtrema_SelfIntersection {.
    cdecl, constructor, importcpp: "BRepExtrema_SelfIntersection(@)",
    header: "BRepExtrema_SelfIntersection.hxx".}
proc Tolerance*(this: BRepExtrema_SelfIntersection): cfloat {.noSideEffect, cdecl,
    importcpp: "Tolerance", header: "BRepExtrema_SelfIntersection.hxx".}
proc SetTolerance*(this: var BRepExtrema_SelfIntersection; theTolerance: cfloat) {.
    cdecl, importcpp: "SetTolerance", header: "BRepExtrema_SelfIntersection.hxx".}
proc LoadShape*(this: var BRepExtrema_SelfIntersection; theShape: TopoDS_Shape): bool {.
    cdecl, importcpp: "LoadShape", header: "BRepExtrema_SelfIntersection.hxx".}
proc Perform*(this: var BRepExtrema_SelfIntersection) {.cdecl, importcpp: "Perform",
    header: "BRepExtrema_SelfIntersection.hxx".}
proc IsDone*(this: BRepExtrema_SelfIntersection): bool {.noSideEffect, cdecl,
    importcpp: "IsDone", header: "BRepExtrema_SelfIntersection.hxx".}
proc OverlapElements*(this: BRepExtrema_SelfIntersection): BRepExtrema_MapOfIntegerPackedMapOfInteger {.
    noSideEffect, cdecl, importcpp: "OverlapElements",
    header: "BRepExtrema_SelfIntersection.hxx".}
proc GetSubShape*(this: BRepExtrema_SelfIntersection; theID: cint): TopoDS_Face {.
    noSideEffect, cdecl, importcpp: "GetSubShape",
    header: "BRepExtrema_SelfIntersection.hxx".}
proc ElementSet*(this: BRepExtrema_SelfIntersection): Handle[
    BRepExtrema_TriangleSet] {.noSideEffect, cdecl, importcpp: "ElementSet",
                              header: "BRepExtrema_SelfIntersection.hxx".}
## !!!Ignored construct:  # OVERLAP_TOOL_OUTPUT_TRIANGLES [NewLine] ! Returns set of overlapped mesh elements (only triangles). const TColStd_PackedMapOfInteger & OverlapTriangles ( ) const { return myOverlapTool . OverlapTriangles1 ( ) ; } # [NewLine] protected : ! Filter out correct adjacent mesh elements. virtual BRepExtrema_ElementFilter :: FilterResult PreCheckElements ( const int theIndex1 , const int theIndex2 ) ;
## Error: identifier expected, but got: ! Returns set of overlapped mesh elements (only triangles).!!!

proc isRegularSharedVertex*(this: var BRepExtrema_SelfIntersection;
                           theSharedVert: BVH_Vec3d; theTrng1Vtxs1: BVH_Vec3d;
                           theTrng1Vtxs2: BVH_Vec3d; theTrng2Vtxs1: BVH_Vec3d;
                           theTrng2Vtxs2: BVH_Vec3d): FilterResult {.cdecl,
    importcpp: "isRegularSharedVertex", header: "BRepExtrema_SelfIntersection.hxx".}
proc isRegularSharedEdge*(this: var BRepExtrema_SelfIntersection;
                         theTrng1Vtxs0: BVH_Vec3d; theTrng1Vtxs1: BVH_Vec3d;
                         theTrng1Vtxs2: BVH_Vec3d; theTrng2Vtxs2: BVH_Vec3d): FilterResult {.
    cdecl, importcpp: "isRegularSharedEdge",
    header: "BRepExtrema_SelfIntersection.hxx".}