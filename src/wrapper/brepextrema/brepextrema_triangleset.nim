import brepextrema_types
import ../tkmath/bvh/bvh_types
import ../tkernel/standard/standard_types
##  Created on: 2014-10-20
##  Created by: Denis BOGOLEPOV
##  Copyright (c) 2014 OPEN CASCADE SAS
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

## ! List of shapes and their IDs for collision detection.



proc newBRepExtrema_TriangleSet*(): BRepExtrema_TriangleSet {.cdecl, constructor,
    importcpp: "BRepExtrema_TriangleSet(@)", header: "BRepExtrema_TriangleSet.hxx".}
proc newBRepExtrema_TriangleSet*(theFaces: BRepExtrema_ShapeList): BRepExtrema_TriangleSet {.
    cdecl, constructor, importcpp: "BRepExtrema_TriangleSet(@)",
    header: "BRepExtrema_TriangleSet.hxx".}
proc destroyBRepExtrema_TriangleSet*(this: var BRepExtrema_TriangleSet) {.cdecl,
    importcpp: "#.~BRepExtrema_TriangleSet()",
    header: "BRepExtrema_TriangleSet.hxx".}
proc Size*(this: BRepExtrema_TriangleSet): cint {.noSideEffect, cdecl,
    importcpp: "Size", header: "BRepExtrema_TriangleSet.hxx".}
proc Box*(this: BRepExtrema_TriangleSet; theIndex: cint): BVH_Box[cfloat, 3] {.
    noSideEffect, cdecl, importcpp: "Box", header: "BRepExtrema_TriangleSet.hxx".}
## using statement

proc Center*(this: BRepExtrema_TriangleSet; theIndex: cint; theAxis: cint): cfloat {.
    noSideEffect, cdecl, importcpp: "Center", header: "BRepExtrema_TriangleSet.hxx".}
proc Swap*(this: var BRepExtrema_TriangleSet; theIndex1: cint; theIndex2: cint) {.cdecl,
    importcpp: "Swap", header: "BRepExtrema_TriangleSet.hxx".}
proc Clear*(this: var BRepExtrema_TriangleSet) {.cdecl, importcpp: "Clear",
    header: "BRepExtrema_TriangleSet.hxx".}
proc Init*(this: var BRepExtrema_TriangleSet; theFaces: BRepExtrema_ShapeList): bool {.
    cdecl, importcpp: "Init", header: "BRepExtrema_TriangleSet.hxx".}
proc GetVertices*(this: BRepExtrema_TriangleSet; theIndex: cint;
                 theVertex1: var BVH_Vec3d; theVertex2: var BVH_Vec3d;
                 theVertex3: var BVH_Vec3d) {.noSideEffect, cdecl,
    importcpp: "GetVertices", header: "BRepExtrema_TriangleSet.hxx".}
proc GetFaceID*(this: BRepExtrema_TriangleSet; theIndex: cint): cint {.noSideEffect,
    cdecl, importcpp: "GetFaceID", header: "BRepExtrema_TriangleSet.hxx".}
type
  Handle_BRepExtrema_TriangleSet* = Handle[BRepExtrema_TriangleSet]
