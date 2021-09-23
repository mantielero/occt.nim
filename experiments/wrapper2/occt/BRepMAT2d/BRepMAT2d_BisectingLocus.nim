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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../MAT2d/MAT2d_Tool2d,
  ../Standard/Standard_Boolean, ../MAT2d/MAT2d_DataMapOfBiIntInteger,
  ../Standard/Standard_Integer, ../MAT/MAT_Side, ../GeomAbs/GeomAbs_JoinType,
  ../MAT/MAT_DataMapOfIntegerBasicElt

discard "forward decl of MAT_Graph"
discard "forward decl of BRepMAT2d_Explorer"
discard "forward decl of MAT_BasicElt"
discard "forward decl of Geom2d_Geometry"
discard "forward decl of gp_Pnt2d"
discard "forward decl of MAT_Node"
discard "forward decl of Bisector_Bisec"
discard "forward decl of MAT_Arc"
type
  BRepMAT2d_BisectingLocus* {.importcpp: "BRepMAT2d_BisectingLocus",
                             header: "BRepMAT2d_BisectingLocus.hxx", bycopy.} = object


proc constructBRepMAT2d_BisectingLocus*(): BRepMAT2d_BisectingLocus {.constructor,
    importcpp: "BRepMAT2d_BisectingLocus(@)",
    header: "BRepMAT2d_BisectingLocus.hxx".}
proc Compute*(this: var BRepMAT2d_BisectingLocus; anExplo: var BRepMAT2d_Explorer;
             LineIndex: Standard_Integer = 1; aSide: MAT_Side = MAT_Left;
             aJoinType: GeomAbs_JoinType = GeomAbs_Arc;
             IsOpenResult: Standard_Boolean = Standard_False) {.
    importcpp: "Compute", header: "BRepMAT2d_BisectingLocus.hxx".}
proc IsDone*(this: BRepMAT2d_BisectingLocus): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "BRepMAT2d_BisectingLocus.hxx".}
proc Graph*(this: BRepMAT2d_BisectingLocus): handle[MAT_Graph] {.noSideEffect,
    importcpp: "Graph", header: "BRepMAT2d_BisectingLocus.hxx".}
proc NumberOfContours*(this: BRepMAT2d_BisectingLocus): Standard_Integer {.
    noSideEffect, importcpp: "NumberOfContours",
    header: "BRepMAT2d_BisectingLocus.hxx".}
proc NumberOfElts*(this: BRepMAT2d_BisectingLocus; IndLine: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "NumberOfElts", header: "BRepMAT2d_BisectingLocus.hxx".}
proc NumberOfSections*(this: BRepMAT2d_BisectingLocus; IndLine: Standard_Integer;
                      Index: Standard_Integer): Standard_Integer {.noSideEffect,
    importcpp: "NumberOfSections", header: "BRepMAT2d_BisectingLocus.hxx".}
proc BasicElt*(this: BRepMAT2d_BisectingLocus; IndLine: Standard_Integer;
              Index: Standard_Integer): handle[MAT_BasicElt] {.noSideEffect,
    importcpp: "BasicElt", header: "BRepMAT2d_BisectingLocus.hxx".}
proc GeomElt*(this: BRepMAT2d_BisectingLocus; aBasicElt: handle[MAT_BasicElt]): handle[
    Geom2d_Geometry] {.noSideEffect, importcpp: "GeomElt",
                      header: "BRepMAT2d_BisectingLocus.hxx".}
proc GeomElt*(this: BRepMAT2d_BisectingLocus; aNode: handle[MAT_Node]): gp_Pnt2d {.
    noSideEffect, importcpp: "GeomElt", header: "BRepMAT2d_BisectingLocus.hxx".}
proc GeomBis*(this: BRepMAT2d_BisectingLocus; anArc: handle[MAT_Arc];
             Reverse: var Standard_Boolean): Bisector_Bisec {.noSideEffect,
    importcpp: "GeomBis", header: "BRepMAT2d_BisectingLocus.hxx".}