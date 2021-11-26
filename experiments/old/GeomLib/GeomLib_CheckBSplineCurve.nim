##  Created on: 1997-05-28
##  Created by: Xavier BENVENISTE
##  Copyright (c) 1997-1999 Matra Datavision
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

discard "forward decl of Geom_BSplineCurve"
discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_OutOfRange"
type
  GeomLibCheckBSplineCurve* {.importcpp: "GeomLib_CheckBSplineCurve",
                             header: "GeomLib_CheckBSplineCurve.hxx", bycopy.} = object


proc `new`*(this: var GeomLibCheckBSplineCurve; theSize: csize_t): pointer {.
    importcpp: "GeomLib_CheckBSplineCurve::operator new",
    header: "GeomLib_CheckBSplineCurve.hxx".}
proc `delete`*(this: var GeomLibCheckBSplineCurve; theAddress: pointer) {.
    importcpp: "GeomLib_CheckBSplineCurve::operator delete",
    header: "GeomLib_CheckBSplineCurve.hxx".}
proc `new[]`*(this: var GeomLibCheckBSplineCurve; theSize: csize_t): pointer {.
    importcpp: "GeomLib_CheckBSplineCurve::operator new[]",
    header: "GeomLib_CheckBSplineCurve.hxx".}
proc `delete[]`*(this: var GeomLibCheckBSplineCurve; theAddress: pointer) {.
    importcpp: "GeomLib_CheckBSplineCurve::operator delete[]",
    header: "GeomLib_CheckBSplineCurve.hxx".}
proc `new`*(this: var GeomLibCheckBSplineCurve; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "GeomLib_CheckBSplineCurve::operator new",
    header: "GeomLib_CheckBSplineCurve.hxx".}
proc `delete`*(this: var GeomLibCheckBSplineCurve; a2: pointer; a3: pointer) {.
    importcpp: "GeomLib_CheckBSplineCurve::operator delete",
    header: "GeomLib_CheckBSplineCurve.hxx".}
proc constructGeomLibCheckBSplineCurve*(curve: Handle[GeomBSplineCurve];
                                       tolerance: StandardReal;
                                       angularTolerance: StandardReal): GeomLibCheckBSplineCurve {.
    constructor, importcpp: "GeomLib_CheckBSplineCurve(@)",
    header: "GeomLib_CheckBSplineCurve.hxx".}
proc isDone*(this: GeomLibCheckBSplineCurve): StandardBoolean {.noSideEffect,
    importcpp: "IsDone", header: "GeomLib_CheckBSplineCurve.hxx".}
proc needTangentFix*(this: GeomLibCheckBSplineCurve;
                    firstFlag: var StandardBoolean; secondFlag: var StandardBoolean) {.
    noSideEffect, importcpp: "NeedTangentFix",
    header: "GeomLib_CheckBSplineCurve.hxx".}
proc fixTangent*(this: var GeomLibCheckBSplineCurve; firstFlag: StandardBoolean;
                lastFlag: StandardBoolean) {.importcpp: "FixTangent",
    header: "GeomLib_CheckBSplineCurve.hxx".}
proc fixedTangent*(this: var GeomLibCheckBSplineCurve; firstFlag: StandardBoolean;
                  lastFlag: StandardBoolean): Handle[GeomBSplineCurve] {.
    importcpp: "FixedTangent", header: "GeomLib_CheckBSplineCurve.hxx".}