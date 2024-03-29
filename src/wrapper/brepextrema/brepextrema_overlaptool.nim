import brepextrema_types
import ../standard/standard_types
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

## ! Enables storing of individual overlapped triangles (useful for debug).
##  #define OVERLAP_TOOL_OUTPUT_TRIANGLES
## ! Tool class for for detection of overlapping of two BVH primitive sets.
## ! This tool is not intended to be used independently, and is integrated
## ! in other classes, implementing algorithms based on shape tessellation
## ! (BRepExtrema_ShapeProximity and BRepExtrema_SelfIntersection).
## !
## ! Note that input element sets may correspond to different shapes or to
## ! the same shape. In first case, tessellations of two given shapes will
## ! be tested for intersection (or overlapping, if tolerance is not zero).
## ! In second case, tessellation of single shape will be tested for self-
## ! intersections. Please note that algorithm results are approximate and
## ! depend greatly on the quality of input tessellation(s).


proc newBRepExtrema_OverlapTool*(): BRepExtrema_OverlapTool {.cdecl, constructor,
    importcpp: "BRepExtrema_OverlapTool(@)", header: "BRepExtrema_OverlapTool.hxx".}
proc newBRepExtrema_OverlapTool*(theSet1: Handle[BRepExtrema_TriangleSet];
                                theSet2: Handle[BRepExtrema_TriangleSet]): BRepExtrema_OverlapTool {.
    cdecl, constructor, importcpp: "BRepExtrema_OverlapTool(@)",
    header: "BRepExtrema_OverlapTool.hxx".}
proc LoadTriangleSets*(this: var BRepExtrema_OverlapTool;
                      theSet1: Handle[BRepExtrema_TriangleSet];
                      theSet2: Handle[BRepExtrema_TriangleSet]) {.cdecl,
    importcpp: "LoadTriangleSets", header: "BRepExtrema_OverlapTool.hxx".}
proc Perform*(this: var BRepExtrema_OverlapTool; theTolerance: cfloat = 0.0) {.cdecl,
    importcpp: "Perform", header: "BRepExtrema_OverlapTool.hxx".}
proc IsDone*(this: BRepExtrema_OverlapTool): bool {.noSideEffect, cdecl,
    importcpp: "IsDone", header: "BRepExtrema_OverlapTool.hxx".}
proc MarkDirty*(this: var BRepExtrema_OverlapTool) {.cdecl, importcpp: "MarkDirty",
    header: "BRepExtrema_OverlapTool.hxx".}
proc OverlapSubShapes1*(this: BRepExtrema_OverlapTool): BRepExtrema_MapOfIntegerPackedMapOfInteger {.
    noSideEffect, cdecl, importcpp: "OverlapSubShapes1",
    header: "BRepExtrema_OverlapTool.hxx".}
proc OverlapSubShapes2*(this: BRepExtrema_OverlapTool): BRepExtrema_MapOfIntegerPackedMapOfInteger {.
    noSideEffect, cdecl, importcpp: "OverlapSubShapes2",
    header: "BRepExtrema_OverlapTool.hxx".}
## !!!Ignored construct:  # OVERLAP_TOOL_OUTPUT_TRIANGLES [NewLine] ! Returns set of overlapped triangles from the 1st shape (for debug). const TColStd_PackedMapOfInteger & OverlapTriangles1 ( ) const { return myOverlapTriangles1 ; } ! Returns set of overlapped triangles from the 2nd shape (for debug). const TColStd_PackedMapOfInteger & OverlapTriangles2 ( ) const { return myOverlapTriangles2 ; } # [NewLine] ! Sets filtering tool for preliminary checking pairs of mesh elements. void SetElementFilter ( BRepExtrema_ElementFilter * theFilter ) { myFilter = theFilter ; } public : ! @name Reject/Accept implementations ! Defines the rules for node rejection by bounding box virtual bool RejectNode ( const BVH_Vec3d & theCornerMin1 , const BVH_Vec3d & theCornerMax1 , const BVH_Vec3d & theCornerMin2 , const BVH_Vec3d & theCornerMax2 , float & ) const ;
## Error: identifier expected, but got: ! Returns set of overlapped triangles from the 1st shape (for debug).!!!

proc Accept*(this: var BRepExtrema_OverlapTool; theLeaf1: cint; theLeaf2: cint): bool {.
    cdecl, importcpp: "Accept", header: "BRepExtrema_OverlapTool.hxx".}
## !!!Ignored construct:  # OVERLAP_TOOL_OUTPUT_TRIANGLES [NewLine] ! Set of overlapped elements from the 1st shape (only triangles). TColStd_PackedMapOfInteger myOverlapTriangles1 ;
## Error: identifier expected, but got: ! Set of overlapped elements from the 1st shape (only triangles).!!!
