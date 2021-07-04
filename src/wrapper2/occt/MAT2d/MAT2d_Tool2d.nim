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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Real,
  ../GeomAbs/GeomAbs_JoinType, ../Standard/Standard_Integer,
  MAT2d_DataMapOfIntegerBisec, MAT2d_DataMapOfIntegerPnt2d,
  MAT2d_DataMapOfIntegerVec2d, ../TColStd/TColStd_SequenceOfInteger,
  ../MAT/MAT_Side, ../Standard/Standard_Boolean

discard "forward decl of MAT2d_Circuit"
discard "forward decl of MAT_Bisector"
discard "forward decl of Bisector_Bisec"
discard "forward decl of Geom2d_Geometry"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec2d"
type
  MAT2d_Tool2d* {.importcpp: "MAT2d_Tool2d", header: "MAT2d_Tool2d.hxx", bycopy.} = object ##
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


proc constructMAT2d_Tool2d*(): MAT2d_Tool2d {.constructor,
    importcpp: "MAT2d_Tool2d(@)", header: "MAT2d_Tool2d.hxx".}
proc Sense*(this: var MAT2d_Tool2d; aside: MAT_Side) {.importcpp: "Sense",
    header: "MAT2d_Tool2d.hxx".}
proc SetJoinType*(this: var MAT2d_Tool2d; aJoinType: GeomAbs_JoinType) {.
    importcpp: "SetJoinType", header: "MAT2d_Tool2d.hxx".}
proc InitItems*(this: var MAT2d_Tool2d; aCircuit: handle[MAT2d_Circuit]) {.
    importcpp: "InitItems", header: "MAT2d_Tool2d.hxx".}
proc NumberOfItems*(this: MAT2d_Tool2d): Standard_Integer {.noSideEffect,
    importcpp: "NumberOfItems", header: "MAT2d_Tool2d.hxx".}
proc ToleranceOfConfusion*(this: MAT2d_Tool2d): Standard_Real {.noSideEffect,
    importcpp: "ToleranceOfConfusion", header: "MAT2d_Tool2d.hxx".}
proc FirstPoint*(this: var MAT2d_Tool2d; anitem: Standard_Integer;
                dist: var Standard_Real): Standard_Integer {.
    importcpp: "FirstPoint", header: "MAT2d_Tool2d.hxx".}
proc TangentBefore*(this: var MAT2d_Tool2d; anitem: Standard_Integer;
                   IsOpenResult: Standard_Boolean): Standard_Integer {.
    importcpp: "TangentBefore", header: "MAT2d_Tool2d.hxx".}
proc TangentAfter*(this: var MAT2d_Tool2d; anitem: Standard_Integer;
                  IsOpenResult: Standard_Boolean): Standard_Integer {.
    importcpp: "TangentAfter", header: "MAT2d_Tool2d.hxx".}
proc Tangent*(this: var MAT2d_Tool2d; bisector: Standard_Integer): Standard_Integer {.
    importcpp: "Tangent", header: "MAT2d_Tool2d.hxx".}
proc CreateBisector*(this: var MAT2d_Tool2d; abisector: handle[MAT_Bisector]) {.
    importcpp: "CreateBisector", header: "MAT2d_Tool2d.hxx".}
proc TrimBisector*(this: var MAT2d_Tool2d; abisector: handle[MAT_Bisector]): Standard_Boolean {.
    importcpp: "TrimBisector", header: "MAT2d_Tool2d.hxx".}
proc TrimBisector*(this: var MAT2d_Tool2d; abisector: handle[MAT_Bisector];
                  apoint: Standard_Integer): Standard_Boolean {.
    importcpp: "TrimBisector", header: "MAT2d_Tool2d.hxx".}
proc IntersectBisector*(this: var MAT2d_Tool2d; bisectorone: handle[MAT_Bisector];
                       bisectortwo: handle[MAT_Bisector];
                       intpnt: var Standard_Integer): Standard_Real {.
    importcpp: "IntersectBisector", header: "MAT2d_Tool2d.hxx".}
proc Distance*(this: MAT2d_Tool2d; abisector: handle[MAT_Bisector];
              param1: Standard_Real; param2: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "Distance", header: "MAT2d_Tool2d.hxx".}
proc Dump*(this: MAT2d_Tool2d; bisector: Standard_Integer; erease: Standard_Integer) {.
    noSideEffect, importcpp: "Dump", header: "MAT2d_Tool2d.hxx".}
proc GeomBis*(this: MAT2d_Tool2d; Index: Standard_Integer): Bisector_Bisec {.
    noSideEffect, importcpp: "GeomBis", header: "MAT2d_Tool2d.hxx".}
proc GeomElt*(this: MAT2d_Tool2d; Index: Standard_Integer): handle[Geom2d_Geometry] {.
    noSideEffect, importcpp: "GeomElt", header: "MAT2d_Tool2d.hxx".}
proc GeomPnt*(this: MAT2d_Tool2d; Index: Standard_Integer): gp_Pnt2d {.noSideEffect,
    importcpp: "GeomPnt", header: "MAT2d_Tool2d.hxx".}
proc GeomVec*(this: MAT2d_Tool2d; Index: Standard_Integer): gp_Vec2d {.noSideEffect,
    importcpp: "GeomVec", header: "MAT2d_Tool2d.hxx".}
proc Circuit*(this: MAT2d_Tool2d): handle[MAT2d_Circuit] {.noSideEffect,
    importcpp: "Circuit", header: "MAT2d_Tool2d.hxx".}
proc BisecFusion*(this: var MAT2d_Tool2d; Index1: Standard_Integer;
                 Index2: Standard_Integer) {.importcpp: "BisecFusion",
    header: "MAT2d_Tool2d.hxx".}
proc ChangeGeomBis*(this: var MAT2d_Tool2d; Index: Standard_Integer): var Bisector_Bisec {.
    importcpp: "ChangeGeomBis", header: "MAT2d_Tool2d.hxx".}