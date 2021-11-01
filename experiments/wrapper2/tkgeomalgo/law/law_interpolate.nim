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

discard "forward decl of Law_BSpline"
discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_ConstructionError"
type
  LawInterpolate* {.importcpp: "Law_Interpolate", header: "Law_Interpolate.hxx",
                   bycopy.} = object ## ! Tolerance is to check if  the points are not too close
                                  ## ! to one an  other.  It is  also  used to check   if the
                                  ## ! tangent vector  is not too small.   There should be at
                                  ## ! least 2 points. If PeriodicFlag is True then the curve
                                  ## ! will be periodic be periodic
                                  ## ! Interpolates in a non periodic fashion.


proc newLawInterpolate*(points: Handle[TColStdHArray1OfReal]; periodicFlag: bool;
                       tolerance: cfloat): LawInterpolate {.cdecl, constructor,
    importcpp: "Law_Interpolate(@)", dynlib: tkgeomalgo.}
proc newLawInterpolate*(points: Handle[TColStdHArray1OfReal];
                       parameters: Handle[TColStdHArray1OfReal];
                       periodicFlag: bool; tolerance: cfloat): LawInterpolate {.
    cdecl, constructor, importcpp: "Law_Interpolate(@)", dynlib: tkgeomalgo.}
proc load*(this: var LawInterpolate; initialTangent: cfloat; finalTangent: cfloat) {.
    cdecl, importcpp: "Load", dynlib: tkgeomalgo.}
proc load*(this: var LawInterpolate; tangents: TColStdArray1OfReal;
          tangentFlags: Handle[TColStdHArray1OfBoolean]) {.cdecl,
    importcpp: "Load", dynlib: tkgeomalgo.}
proc clearTangents*(this: var LawInterpolate) {.cdecl, importcpp: "ClearTangents",
    dynlib: tkgeomalgo.}
proc perform*(this: var LawInterpolate) {.cdecl, importcpp: "Perform",
                                      dynlib: tkgeomalgo.}
proc curve*(this: LawInterpolate): Handle[LawBSpline] {.noSideEffect, cdecl,
    importcpp: "Curve", dynlib: tkgeomalgo.}
proc isDone*(this: LawInterpolate): bool {.noSideEffect, cdecl, importcpp: "IsDone",
                                       dynlib: tkgeomalgo.}