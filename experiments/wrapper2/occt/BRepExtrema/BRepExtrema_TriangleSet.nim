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

import
  ../TopoDS/TopoDS_Face, ../BVH/BVH_PrimitiveSet3d

## ! List of shapes and their IDs for collision detection.

type
  BRepExtrema_ShapeList* = NCollection_Vector[TopoDS_Face]

## ! Triangle set corresponding to specific face.

type
  BRepExtrema_TriangleSet* {.importcpp: "BRepExtrema_TriangleSet",
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


proc constructBRepExtrema_TriangleSet*(): BRepExtrema_TriangleSet {.constructor,
    importcpp: "BRepExtrema_TriangleSet(@)", header: "BRepExtrema_TriangleSet.hxx".}
proc constructBRepExtrema_TriangleSet*(theFaces: BRepExtrema_ShapeList): BRepExtrema_TriangleSet {.
    constructor, importcpp: "BRepExtrema_TriangleSet(@)",
    header: "BRepExtrema_TriangleSet.hxx".}
proc destroyBRepExtrema_TriangleSet*(this: var BRepExtrema_TriangleSet) {.
    importcpp: "#.~BRepExtrema_TriangleSet()",
    header: "BRepExtrema_TriangleSet.hxx".}
proc Size*(this: BRepExtrema_TriangleSet): Standard_Integer {.noSideEffect,
    importcpp: "Size", header: "BRepExtrema_TriangleSet.hxx".}
proc Box*(this: BRepExtrema_TriangleSet; theIndex: Standard_Integer): BVH_Box[
    Standard_Real, 3] {.noSideEffect, importcpp: "Box",
                      header: "BRepExtrema_TriangleSet.hxx".}
## using statement

proc Center*(this: BRepExtrema_TriangleSet; theIndex: Standard_Integer;
            theAxis: Standard_Integer): Standard_Real {.noSideEffect,
    importcpp: "Center", header: "BRepExtrema_TriangleSet.hxx".}
proc Swap*(this: var BRepExtrema_TriangleSet; theIndex1: Standard_Integer;
          theIndex2: Standard_Integer) {.importcpp: "Swap",
                                       header: "BRepExtrema_TriangleSet.hxx".}
proc Clear*(this: var BRepExtrema_TriangleSet) {.importcpp: "Clear",
    header: "BRepExtrema_TriangleSet.hxx".}
proc Init*(this: var BRepExtrema_TriangleSet; theFaces: BRepExtrema_ShapeList): Standard_Boolean {.
    importcpp: "Init", header: "BRepExtrema_TriangleSet.hxx".}
proc GetVertices*(this: BRepExtrema_TriangleSet; theIndex: Standard_Integer;
                 theVertex1: var BVH_Vec3d; theVertex2: var BVH_Vec3d;
                 theVertex3: var BVH_Vec3d) {.noSideEffect,
    importcpp: "GetVertices", header: "BRepExtrema_TriangleSet.hxx".}
proc GetFaceID*(this: BRepExtrema_TriangleSet; theIndex: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "GetFaceID", header: "BRepExtrema_TriangleSet.hxx".}
type
  BRepExtrema_TriangleSetbase_type* = BVH_PrimitiveSet3d

proc get_type_name*(): cstring {.importcpp: "BRepExtrema_TriangleSet::get_type_name(@)",
                              header: "BRepExtrema_TriangleSet.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BRepExtrema_TriangleSet::get_type_descriptor(@)",
    header: "BRepExtrema_TriangleSet.hxx".}
proc DynamicType*(this: BRepExtrema_TriangleSet): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "BRepExtrema_TriangleSet.hxx".}
discard "forward decl of BRepExtrema_TriangleSet"
type
  Handle_BRepExtrema_TriangleSet* = handle[BRepExtrema_TriangleSet]
