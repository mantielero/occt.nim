import law_types
import ../../tkernel/standard/standard_types
import ../../tkernel/tcolstd/tcolstd_types



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



proc newLawInterpolate*(points: Handle[TColStdHArray1OfReal]; periodicFlag: bool;
                       tolerance: cfloat): LawInterpolate {.cdecl, constructor,
    importcpp: "Law_Interpolate(@)", header: "Law_Interpolate.hxx".}
proc newLawInterpolate*(points: Handle[TColStdHArray1OfReal];
                       parameters: Handle[TColStdHArray1OfReal];
                       periodicFlag: bool; tolerance: cfloat): LawInterpolate {.
    cdecl, constructor, importcpp: "Law_Interpolate(@)", header: "Law_Interpolate.hxx".}
proc load*(this: var LawInterpolate; initialTangent: cfloat; finalTangent: cfloat) {.
    cdecl, importcpp: "Load", header: "Law_Interpolate.hxx".}
proc load*(this: var LawInterpolate; tangents: TColStdArray1OfReal;
          tangentFlags: Handle[TColStdHArray1OfBoolean]) {.cdecl,
    importcpp: "Load", header: "Law_Interpolate.hxx".}
proc clearTangents*(this: var LawInterpolate) {.cdecl, importcpp: "ClearTangents",
    header: "Law_Interpolate.hxx".}
proc perform*(this: var LawInterpolate) {.cdecl, importcpp: "Perform",
                                      header: "Law_Interpolate.hxx".}
proc curve*(this: LawInterpolate): Handle[LawBSpline] {.noSideEffect, cdecl,
    importcpp: "Curve", header: "Law_Interpolate.hxx".}
proc isDone*(this: LawInterpolate): bool {.noSideEffect, cdecl, importcpp: "IsDone",
                                       header: "Law_Interpolate.hxx".}

