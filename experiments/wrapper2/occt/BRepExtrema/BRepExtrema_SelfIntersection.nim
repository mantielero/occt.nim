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

type
  BRepExtremaSelfIntersection* {.importcpp: "BRepExtrema_SelfIntersection",
                                header: "BRepExtrema_SelfIntersection.hxx", bycopy.} = object of BRepExtremaElementFilter ##
                                                                                                                   ## !
                                                                                                                   ## Creates
                                                                                                                   ## unitialized
                                                                                                                   ## self-intersection
                                                                                                                   ## tool.
                                                                                                                   ##
                                                                                                                   ## !
                                                                                                                   ## Returns
                                                                                                                   ## tolerance
                                                                                                                   ## value
                                                                                                                   ## used
                                                                                                                   ## for
                                                                                                                   ## self-intersection
                                                                                                                   ## test.
                                                                                                                   ##
                                                                                                                   ## !
                                                                                                                   ## Self-intersection
                                                                                                                   ## tolerance.
    ## ! Is the input shape inited?
    ## ! List of triangulated faces of the shape.
    ## ! Set of all the face triangles of the shape.
    ## ! Overlap tool used for self-intersection test.


proc constructBRepExtremaSelfIntersection*(theTolerance: float = 0.0): BRepExtremaSelfIntersection {.
    constructor, importcpp: "BRepExtrema_SelfIntersection(@)",
    header: "BRepExtrema_SelfIntersection.hxx".}
proc constructBRepExtremaSelfIntersection*(theShape: TopoDS_Shape;
    theTolerance: float = 0.0): BRepExtremaSelfIntersection {.constructor,
    importcpp: "BRepExtrema_SelfIntersection(@)",
    header: "BRepExtrema_SelfIntersection.hxx".}
proc tolerance*(this: BRepExtremaSelfIntersection): float {.noSideEffect,
    importcpp: "Tolerance", header: "BRepExtrema_SelfIntersection.hxx".}
proc setTolerance*(this: var BRepExtremaSelfIntersection; theTolerance: float) {.
    importcpp: "SetTolerance", header: "BRepExtrema_SelfIntersection.hxx".}
proc loadShape*(this: var BRepExtremaSelfIntersection; theShape: TopoDS_Shape): bool {.
    importcpp: "LoadShape", header: "BRepExtrema_SelfIntersection.hxx".}
proc perform*(this: var BRepExtremaSelfIntersection) {.importcpp: "Perform",
    header: "BRepExtrema_SelfIntersection.hxx".}
proc isDone*(this: BRepExtremaSelfIntersection): bool {.noSideEffect,
    importcpp: "IsDone", header: "BRepExtrema_SelfIntersection.hxx".}
proc overlapElements*(this: BRepExtremaSelfIntersection): BRepExtremaMapOfIntegerPackedMapOfInteger {.
    noSideEffect, importcpp: "OverlapElements",
    header: "BRepExtrema_SelfIntersection.hxx".}
proc getSubShape*(this: BRepExtremaSelfIntersection; theID: int): TopoDS_Face {.
    noSideEffect, importcpp: "GetSubShape",
    header: "BRepExtrema_SelfIntersection.hxx".}
proc elementSet*(this: BRepExtremaSelfIntersection): Handle[BRepExtremaTriangleSet] {.
    noSideEffect, importcpp: "ElementSet",
    header: "BRepExtrema_SelfIntersection.hxx".}
## !!!Ignored construct:  # OVERLAP_TOOL_OUTPUT_TRIANGLES [NewLine] ! Returns set of overlapped mesh elements (only triangles). const TColStd_PackedMapOfInteger & OverlapTriangles ( ) const { return myOverlapTool . OverlapTriangles1 ( ) ; } # [NewLine] protected : ! Filter out correct adjacent mesh elements. virtual BRepExtrema_ElementFilter :: FilterResult PreCheckElements ( const Standard_Integer theIndex1 , const Standard_Integer theIndex2 ) ;
## Error: identifier expected, but got: ! Returns set of overlapped mesh elements (only triangles).!!!

proc isRegularSharedVertex*(this: var BRepExtremaSelfIntersection;
                           theSharedVert: BVH_Vec3d; theTrng1Vtxs1: BVH_Vec3d;
                           theTrng1Vtxs2: BVH_Vec3d; theTrng2Vtxs1: BVH_Vec3d;
                           theTrng2Vtxs2: BVH_Vec3d): FilterResult {.
    importcpp: "isRegularSharedVertex", header: "BRepExtrema_SelfIntersection.hxx".}
proc isRegularSharedEdge*(this: var BRepExtremaSelfIntersection;
                         theTrng1Vtxs0: BVH_Vec3d; theTrng1Vtxs1: BVH_Vec3d;
                         theTrng1Vtxs2: BVH_Vec3d; theTrng2Vtxs2: BVH_Vec3d): FilterResult {.
    importcpp: "isRegularSharedEdge", header: "BRepExtrema_SelfIntersection.hxx".}
