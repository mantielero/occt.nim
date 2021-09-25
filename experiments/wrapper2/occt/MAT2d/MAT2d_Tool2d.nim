##  Created on: 1993-07-12
##  Created by: Yves FRICAUD
##  Copyright (c) 1993-1999 Matra Datavision
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

discard "forward decl of MAT2d_Circuit"
discard "forward decl of MAT_Bisector"
discard "forward decl of Bisector_Bisec"
discard "forward decl of Geom2d_Geometry"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec2d"
type
  MAT2dTool2d* {.importcpp: "MAT2d_Tool2d", header: "MAT2d_Tool2d.hxx", bycopy.} = object ##
                                                                                  ## !
                                                                                  ## Empty
                                                                                  ## Constructor.
                                                                                  ##
                                                                                  ## !
                                                                                  ## Returns
                                                                                  ## True
                                                                                  ## if
                                                                                  ## the
                                                                                  ## point
                                                                                  ## <apoint>
                                                                                  ## is
                                                                                  ## equidistant
                                                                                  ## to
                                                                                  ##
                                                                                  ## !
                                                                                  ## the
                                                                                  ## elements
                                                                                  ## separated
                                                                                  ## by
                                                                                  ## bisectors
                                                                                  ## <bisectorone>
                                                                                  ## and
                                                                                  ##
                                                                                  ## !
                                                                                  ## <bisectortwo>.
                                                                                  ##
                                                                                  ## !
                                                                                  ## In
                                                                                  ## this
                                                                                  ## case
                                                                                  ## <adistance>
                                                                                  ## is
                                                                                  ## the
                                                                                  ## distance
                                                                                  ## of
                                                                                  ## the
                                                                                  ## point
                                                                                  ##
                                                                                  ## !
                                                                                  ## from
                                                                                  ## the
                                                                                  ## bisectors.


proc constructMAT2dTool2d*(): MAT2dTool2d {.constructor,
    importcpp: "MAT2d_Tool2d(@)", header: "MAT2d_Tool2d.hxx".}
proc sense*(this: var MAT2dTool2d; aside: MAT_Side) {.importcpp: "Sense",
    header: "MAT2d_Tool2d.hxx".}
proc setJoinType*(this: var MAT2dTool2d; aJoinType: GeomAbsJoinType) {.
    importcpp: "SetJoinType", header: "MAT2d_Tool2d.hxx".}
proc initItems*(this: var MAT2dTool2d; aCircuit: Handle[MAT2dCircuit]) {.
    importcpp: "InitItems", header: "MAT2d_Tool2d.hxx".}
proc numberOfItems*(this: MAT2dTool2d): int {.noSideEffect,
    importcpp: "NumberOfItems", header: "MAT2d_Tool2d.hxx".}
proc toleranceOfConfusion*(this: MAT2dTool2d): float {.noSideEffect,
    importcpp: "ToleranceOfConfusion", header: "MAT2d_Tool2d.hxx".}
proc firstPoint*(this: var MAT2dTool2d; anitem: int; dist: var float): int {.
    importcpp: "FirstPoint", header: "MAT2d_Tool2d.hxx".}
proc tangentBefore*(this: var MAT2dTool2d; anitem: int; isOpenResult: bool): int {.
    importcpp: "TangentBefore", header: "MAT2d_Tool2d.hxx".}
proc tangentAfter*(this: var MAT2dTool2d; anitem: int; isOpenResult: bool): int {.
    importcpp: "TangentAfter", header: "MAT2d_Tool2d.hxx".}
proc tangent*(this: var MAT2dTool2d; bisector: int): int {.importcpp: "Tangent",
    header: "MAT2d_Tool2d.hxx".}
proc createBisector*(this: var MAT2dTool2d; abisector: Handle[MAT_Bisector]) {.
    importcpp: "CreateBisector", header: "MAT2d_Tool2d.hxx".}
proc trimBisector*(this: var MAT2dTool2d; abisector: Handle[MAT_Bisector]): bool {.
    importcpp: "TrimBisector", header: "MAT2d_Tool2d.hxx".}
proc trimBisector*(this: var MAT2dTool2d; abisector: Handle[MAT_Bisector]; apoint: int): bool {.
    importcpp: "TrimBisector", header: "MAT2d_Tool2d.hxx".}
proc intersectBisector*(this: var MAT2dTool2d; bisectorone: Handle[MAT_Bisector];
                       bisectortwo: Handle[MAT_Bisector]; intpnt: var int): float {.
    importcpp: "IntersectBisector", header: "MAT2d_Tool2d.hxx".}
proc distance*(this: MAT2dTool2d; abisector: Handle[MAT_Bisector]; param1: float;
              param2: float): float {.noSideEffect, importcpp: "Distance",
                                   header: "MAT2d_Tool2d.hxx".}
proc dump*(this: MAT2dTool2d; bisector: int; erease: int) {.noSideEffect,
    importcpp: "Dump", header: "MAT2d_Tool2d.hxx".}
proc geomBis*(this: MAT2dTool2d; index: int): BisectorBisec {.noSideEffect,
    importcpp: "GeomBis", header: "MAT2d_Tool2d.hxx".}
proc geomElt*(this: MAT2dTool2d; index: int): Handle[Geom2dGeometry] {.noSideEffect,
    importcpp: "GeomElt", header: "MAT2d_Tool2d.hxx".}
proc geomPnt*(this: MAT2dTool2d; index: int): Pnt2d {.noSideEffect,
    importcpp: "GeomPnt", header: "MAT2d_Tool2d.hxx".}
proc geomVec*(this: MAT2dTool2d; index: int): Vec2d {.noSideEffect,
    importcpp: "GeomVec", header: "MAT2d_Tool2d.hxx".}
proc circuit*(this: MAT2dTool2d): Handle[MAT2dCircuit] {.noSideEffect,
    importcpp: "Circuit", header: "MAT2d_Tool2d.hxx".}
proc bisecFusion*(this: var MAT2dTool2d; index1: int; index2: int) {.
    importcpp: "BisecFusion", header: "MAT2d_Tool2d.hxx".}
proc changeGeomBis*(this: var MAT2dTool2d; index: int): var BisectorBisec {.
    importcpp: "ChangeGeomBis", header: "MAT2d_Tool2d.hxx".}
