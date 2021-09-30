##  Created on: 1993-07-06
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

discard "forward decl of MAT_Graph"
discard "forward decl of BRepMAT2d_Explorer"
discard "forward decl of MAT_BasicElt"
discard "forward decl of Geom2d_Geometry"
discard "forward decl of gp_Pnt2d"
discard "forward decl of MAT_Node"
discard "forward decl of Bisector_Bisec"
discard "forward decl of MAT_Arc"
type
  BRepMAT2dBisectingLocus* {.importcpp: "BRepMAT2d_BisectingLocus",
                            header: "BRepMAT2d_BisectingLocus.hxx", bycopy.} = object


proc `new`*(this: var BRepMAT2dBisectingLocus; theSize: csize_t): pointer {.
    importcpp: "BRepMAT2d_BisectingLocus::operator new",
    header: "BRepMAT2d_BisectingLocus.hxx".}
proc `delete`*(this: var BRepMAT2dBisectingLocus; theAddress: pointer) {.
    importcpp: "BRepMAT2d_BisectingLocus::operator delete",
    header: "BRepMAT2d_BisectingLocus.hxx".}
proc `new[]`*(this: var BRepMAT2dBisectingLocus; theSize: csize_t): pointer {.
    importcpp: "BRepMAT2d_BisectingLocus::operator new[]",
    header: "BRepMAT2d_BisectingLocus.hxx".}
proc `delete[]`*(this: var BRepMAT2dBisectingLocus; theAddress: pointer) {.
    importcpp: "BRepMAT2d_BisectingLocus::operator delete[]",
    header: "BRepMAT2d_BisectingLocus.hxx".}
proc `new`*(this: var BRepMAT2dBisectingLocus; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRepMAT2d_BisectingLocus::operator new",
    header: "BRepMAT2d_BisectingLocus.hxx".}
proc `delete`*(this: var BRepMAT2dBisectingLocus; a2: pointer; a3: pointer) {.
    importcpp: "BRepMAT2d_BisectingLocus::operator delete",
    header: "BRepMAT2d_BisectingLocus.hxx".}
proc constructBRepMAT2dBisectingLocus*(): BRepMAT2dBisectingLocus {.constructor,
    importcpp: "BRepMAT2d_BisectingLocus(@)",
    header: "BRepMAT2d_BisectingLocus.hxx".}
proc compute*(this: var BRepMAT2dBisectingLocus; anExplo: var BRepMAT2dExplorer;
             lineIndex: int = 1; aSide: MAT_Side = mAT_Left;
             aJoinType: GeomAbsJoinType = geomAbsArc;
             isOpenResult: StandardBoolean = false) {.importcpp: "Compute",
    header: "BRepMAT2d_BisectingLocus.hxx".}
proc isDone*(this: BRepMAT2dBisectingLocus): StandardBoolean {.noSideEffect,
    importcpp: "IsDone", header: "BRepMAT2d_BisectingLocus.hxx".}
proc graph*(this: BRepMAT2dBisectingLocus): Handle[MAT_Graph] {.noSideEffect,
    importcpp: "Graph", header: "BRepMAT2d_BisectingLocus.hxx".}
proc numberOfContours*(this: BRepMAT2dBisectingLocus): int {.noSideEffect,
    importcpp: "NumberOfContours", header: "BRepMAT2d_BisectingLocus.hxx".}
proc numberOfElts*(this: BRepMAT2dBisectingLocus; indLine: int): int {.noSideEffect,
    importcpp: "NumberOfElts", header: "BRepMAT2d_BisectingLocus.hxx".}
proc numberOfSections*(this: BRepMAT2dBisectingLocus; indLine: int; index: int): int {.
    noSideEffect, importcpp: "NumberOfSections",
    header: "BRepMAT2d_BisectingLocus.hxx".}
proc basicElt*(this: BRepMAT2dBisectingLocus; indLine: int; index: int): Handle[
    MAT_BasicElt] {.noSideEffect, importcpp: "BasicElt",
                   header: "BRepMAT2d_BisectingLocus.hxx".}
proc geomElt*(this: BRepMAT2dBisectingLocus; aBasicElt: Handle[MAT_BasicElt]): Handle[
    Geom2dGeometry] {.noSideEffect, importcpp: "GeomElt",
                     header: "BRepMAT2d_BisectingLocus.hxx".}
proc geomElt*(this: BRepMAT2dBisectingLocus; aNode: Handle[MAT_Node]): Pnt2d {.
    noSideEffect, importcpp: "GeomElt", header: "BRepMAT2d_BisectingLocus.hxx".}
proc geomBis*(this: BRepMAT2dBisectingLocus; anArc: Handle[MAT_Arc];
             reverse: var StandardBoolean): BisectorBisec {.noSideEffect,
    importcpp: "GeomBis", header: "BRepMAT2d_BisectingLocus.hxx".}