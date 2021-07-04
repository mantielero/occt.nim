##  Created on: 1995-11-15
##  Created by: Laurent BOURESCHE
##  Copyright (c) 1995-1999 Matra Datavision
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
  ../TColStd/TColStd_HArray1OfReal, ../Standard/Standard_Boolean,
  ../TColStd/TColStd_HArray1OfBoolean, ../TColStd/TColStd_Array1OfReal

discard "forward decl of Law_BSpline"
discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_ConstructionError"
type
  Law_Interpolate* {.importcpp: "Law_Interpolate", header: "Law_Interpolate.hxx",
                    bycopy.} = object ## ! Tolerance is to check if  the points are not too close
                                   ## ! to one an  other.  It is  also  used to check   if the
                                   ## ! tangent vector  is not too small.   There should be at
                                   ## ! least 2 points. If PeriodicFlag is True then the curve
                                   ## ! will be periodic be periodic
                                   ## ! Interpolates in a non periodic fashion.


proc constructLaw_Interpolate*(Points: handle[TColStd_HArray1OfReal];
                              PeriodicFlag: Standard_Boolean;
                              Tolerance: Standard_Real): Law_Interpolate {.
    constructor, importcpp: "Law_Interpolate(@)", header: "Law_Interpolate.hxx".}
proc constructLaw_Interpolate*(Points: handle[TColStd_HArray1OfReal];
                              Parameters: handle[TColStd_HArray1OfReal];
                              PeriodicFlag: Standard_Boolean;
                              Tolerance: Standard_Real): Law_Interpolate {.
    constructor, importcpp: "Law_Interpolate(@)", header: "Law_Interpolate.hxx".}
proc Load*(this: var Law_Interpolate; InitialTangent: Standard_Real;
          FinalTangent: Standard_Real) {.importcpp: "Load",
                                       header: "Law_Interpolate.hxx".}
proc Load*(this: var Law_Interpolate; Tangents: TColStd_Array1OfReal;
          TangentFlags: handle[TColStd_HArray1OfBoolean]) {.importcpp: "Load",
    header: "Law_Interpolate.hxx".}
proc ClearTangents*(this: var Law_Interpolate) {.importcpp: "ClearTangents",
    header: "Law_Interpolate.hxx".}
proc Perform*(this: var Law_Interpolate) {.importcpp: "Perform",
                                       header: "Law_Interpolate.hxx".}
proc Curve*(this: Law_Interpolate): handle[Law_BSpline] {.noSideEffect,
    importcpp: "Curve", header: "Law_Interpolate.hxx".}
proc IsDone*(this: Law_Interpolate): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "Law_Interpolate.hxx".}