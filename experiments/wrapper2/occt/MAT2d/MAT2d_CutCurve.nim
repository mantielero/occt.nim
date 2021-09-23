##  Created on: 1994-09-23
##  Created by: Yves FRICAUD
##  Copyright (c) 1994-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../TColGeom2d/TColGeom2d_SequenceOfCurve,
  ../MAT/MAT_Side, ../Standard/Standard_Boolean, ../Standard/Standard_Integer

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Geom2d_Curve"
discard "forward decl of Geom2d_TrimmedCurve"
type
  MAT2d_CutCurve* {.importcpp: "MAT2d_CutCurve", header: "MAT2d_CutCurve.hxx", bycopy.} = object


proc constructMAT2d_CutCurve*(): MAT2d_CutCurve {.constructor,
    importcpp: "MAT2d_CutCurve(@)", header: "MAT2d_CutCurve.hxx".}
proc constructMAT2d_CutCurve*(C: handle[Geom2d_Curve]): MAT2d_CutCurve {.
    constructor, importcpp: "MAT2d_CutCurve(@)", header: "MAT2d_CutCurve.hxx".}
proc Perform*(this: var MAT2d_CutCurve; C: handle[Geom2d_Curve]) {.
    importcpp: "Perform", header: "MAT2d_CutCurve.hxx".}
proc Perform*(this: var MAT2d_CutCurve; C: handle[Geom2d_Curve]; aSide: MAT_Side) {.
    importcpp: "Perform", header: "MAT2d_CutCurve.hxx".}
proc PerformInf*(this: var MAT2d_CutCurve; C: handle[Geom2d_Curve]) {.
    importcpp: "PerformInf", header: "MAT2d_CutCurve.hxx".}
proc UnModified*(this: MAT2d_CutCurve): Standard_Boolean {.noSideEffect,
    importcpp: "UnModified", header: "MAT2d_CutCurve.hxx".}
proc NbCurves*(this: MAT2d_CutCurve): Standard_Integer {.noSideEffect,
    importcpp: "NbCurves", header: "MAT2d_CutCurve.hxx".}
proc Value*(this: MAT2d_CutCurve; Index: Standard_Integer): handle[
    Geom2d_TrimmedCurve] {.noSideEffect, importcpp: "Value",
                          header: "MAT2d_CutCurve.hxx".}