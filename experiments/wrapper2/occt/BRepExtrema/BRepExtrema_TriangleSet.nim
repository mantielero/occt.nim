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

type
  BRepExtremaShapeList* = NCollectionVector[TopoDS_Face]

## ! Triangle set corresponding to specific face.

type
  BRepExtremaTriangleSet* {.importcpp: "BRepExtrema_TriangleSet",
                           header: "BRepExtrema_TriangleSet.hxx", bycopy.} = object of BVH_PrimitiveSet3d ##
                                                                                                   ## !
                                                                                                   ## Creates
                                                                                                   ## empty
                                                                                                   ## triangle
                                                                                                   ## set.
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## @name
                                                                                                   ## methods
                                                                                                   ## implementing
                                                                                                   ## BVH
                                                                                                   ## set
                                                                                                   ## interface
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## Returns
                                                                                                   ## total
                                                                                                   ## number
                                                                                                   ## of
                                                                                                   ## triangles.
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## Clears
                                                                                                   ## triangle
                                                                                                   ## set
                                                                                                   ## data.
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## Array
                                                                                                   ## of
                                                                                                   ## vertex
                                                                                                   ## indices.
    ## ! Array of vertex coordinates.


proc constructBRepExtremaTriangleSet*(): BRepExtremaTriangleSet {.constructor,
    importcpp: "BRepExtrema_TriangleSet(@)", header: "BRepExtrema_TriangleSet.hxx".}
proc constructBRepExtremaTriangleSet*(theFaces: BRepExtremaShapeList): BRepExtremaTriangleSet {.
    constructor, importcpp: "BRepExtrema_TriangleSet(@)",
    header: "BRepExtrema_TriangleSet.hxx".}
proc destroyBRepExtremaTriangleSet*(this: var BRepExtremaTriangleSet) {.
    importcpp: "#.~BRepExtrema_TriangleSet()",
    header: "BRepExtrema_TriangleSet.hxx".}
proc size*(this: BRepExtremaTriangleSet): int {.noSideEffect, importcpp: "Size",
    header: "BRepExtrema_TriangleSet.hxx".}
proc box*(this: BRepExtremaTriangleSet; theIndex: int): BVH_Box[float, 3] {.
    noSideEffect, importcpp: "Box", header: "BRepExtrema_TriangleSet.hxx".}
## using statement

proc center*(this: BRepExtremaTriangleSet; theIndex: int; theAxis: int): float {.
    noSideEffect, importcpp: "Center", header: "BRepExtrema_TriangleSet.hxx".}
proc swap*(this: var BRepExtremaTriangleSet; theIndex1: int; theIndex2: int) {.
    importcpp: "Swap", header: "BRepExtrema_TriangleSet.hxx".}
proc clear*(this: var BRepExtremaTriangleSet) {.importcpp: "Clear",
    header: "BRepExtrema_TriangleSet.hxx".}
proc init*(this: var BRepExtremaTriangleSet; theFaces: BRepExtremaShapeList): bool {.
    importcpp: "Init", header: "BRepExtrema_TriangleSet.hxx".}
proc getVertices*(this: BRepExtremaTriangleSet; theIndex: int;
                 theVertex1: var BVH_Vec3d; theVertex2: var BVH_Vec3d;
                 theVertex3: var BVH_Vec3d) {.noSideEffect,
    importcpp: "GetVertices", header: "BRepExtrema_TriangleSet.hxx".}
proc getFaceID*(this: BRepExtremaTriangleSet; theIndex: int): int {.noSideEffect,
    importcpp: "GetFaceID", header: "BRepExtrema_TriangleSet.hxx".}
type
  BRepExtremaTriangleSetbaseType* = BVH_PrimitiveSet3d

proc getTypeName*(): cstring {.importcpp: "BRepExtrema_TriangleSet::get_type_name(@)",
                            header: "BRepExtrema_TriangleSet.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BRepExtrema_TriangleSet::get_type_descriptor(@)",
    header: "BRepExtrema_TriangleSet.hxx".}
proc dynamicType*(this: BRepExtremaTriangleSet): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "BRepExtrema_TriangleSet.hxx".}
discard "forward decl of BRepExtrema_TriangleSet"
type
  HandleBRepExtremaTriangleSet* = Handle[BRepExtremaTriangleSet]

