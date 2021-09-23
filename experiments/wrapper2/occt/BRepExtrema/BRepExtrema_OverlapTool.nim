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

import
  BRepExtrema_TriangleSet, BRepExtrema_ElementFilter,
  BRepExtrema_MapOfIntegerPackedMapOfInteger, ../BVH/BVH_Traverse

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

type
  BRepExtrema_OverlapTool* {.importcpp: "BRepExtrema_OverlapTool",
                            header: "BRepExtrema_OverlapTool.hxx", bycopy.} = object of BVH_PairTraverse[
      Standard_Real, 3] ## ! Creates new unitialized overlap tool.
                      ## ! Loads the given element sets into the overlap tool.
                      ## ! Performs narrow-phase of overlap test (exact intersection).
                      ## ! Set of all mesh elements (triangles) of the 1st shape.
    ## ! Set of all mesh elements (triangles) of the 2nd shape.
    ## ! Filter for preliminary checking pairs of mesh elements.
    ## ! Resulted set of overlapped sub-shapes of 1st shape (only faces).
    ## ! Resulted set of overlapped sub-shapes of 2nd shape (only faces).


proc constructBRepExtrema_OverlapTool*(): BRepExtrema_OverlapTool {.constructor,
    importcpp: "BRepExtrema_OverlapTool(@)", header: "BRepExtrema_OverlapTool.hxx".}
proc constructBRepExtrema_OverlapTool*(theSet1: handle[BRepExtrema_TriangleSet];
                                      theSet2: handle[BRepExtrema_TriangleSet]): BRepExtrema_OverlapTool {.
    constructor, importcpp: "BRepExtrema_OverlapTool(@)",
    header: "BRepExtrema_OverlapTool.hxx".}
proc LoadTriangleSets*(this: var BRepExtrema_OverlapTool;
                      theSet1: handle[BRepExtrema_TriangleSet];
                      theSet2: handle[BRepExtrema_TriangleSet]) {.
    importcpp: "LoadTriangleSets", header: "BRepExtrema_OverlapTool.hxx".}
proc Perform*(this: var BRepExtrema_OverlapTool; theTolerance: Standard_Real = 0.0) {.
    importcpp: "Perform", header: "BRepExtrema_OverlapTool.hxx".}
proc IsDone*(this: BRepExtrema_OverlapTool): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "BRepExtrema_OverlapTool.hxx".}
proc MarkDirty*(this: var BRepExtrema_OverlapTool) {.importcpp: "MarkDirty",
    header: "BRepExtrema_OverlapTool.hxx".}
proc OverlapSubShapes1*(this: BRepExtrema_OverlapTool): BRepExtrema_MapOfIntegerPackedMapOfInteger {.
    noSideEffect, importcpp: "OverlapSubShapes1",
    header: "BRepExtrema_OverlapTool.hxx".}
proc OverlapSubShapes2*(this: BRepExtrema_OverlapTool): BRepExtrema_MapOfIntegerPackedMapOfInteger {.
    noSideEffect, importcpp: "OverlapSubShapes2",
    header: "BRepExtrema_OverlapTool.hxx".}
## !!!Ignored construct:  # OVERLAP_TOOL_OUTPUT_TRIANGLES [NewLine] ! Returns set of overlapped triangles from the 1st shape (for debug). const TColStd_PackedMapOfInteger & OverlapTriangles1 ( ) const { return myOverlapTriangles1 ; } ! Returns set of overlapped triangles from the 2nd shape (for debug). const TColStd_PackedMapOfInteger & OverlapTriangles2 ( ) const { return myOverlapTriangles2 ; } # [NewLine] ! Sets filtering tool for preliminary checking pairs of mesh elements. void SetElementFilter ( BRepExtrema_ElementFilter * theFilter ) { myFilter = theFilter ; } public : ! @name Reject/Accept implementations ! Defines the rules for node rejection by bounding box virtual Standard_Boolean RejectNode ( const BVH_Vec3d & theCornerMin1 , const BVH_Vec3d & theCornerMax1 , const BVH_Vec3d & theCornerMin2 , const BVH_Vec3d & theCornerMax2 , Standard_Real & ) const ;
## Error: identifier expected, but got: ! Returns set of overlapped triangles from the 1st shape (for debug).!!!

proc Accept*(this: var BRepExtrema_OverlapTool; theLeaf1: Standard_Integer;
            theLeaf2: Standard_Integer): Standard_Boolean {.importcpp: "Accept",
    header: "BRepExtrema_OverlapTool.hxx".}
## !!!Ignored construct:  # OVERLAP_TOOL_OUTPUT_TRIANGLES [NewLine] ! Set of overlapped elements from the 1st shape (only triangles). TColStd_PackedMapOfInteger myOverlapTriangles1 ;
## Error: identifier expected, but got: ! Set of overlapped elements from the 1st shape (only triangles).!!!
