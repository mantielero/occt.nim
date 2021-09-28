##  Created on: 1994-03-23
##  Created by: Bruno DUMORTIER
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

discard "forward decl of Standard_OutOfRange"
discard "forward decl of StdFail_NotDone"
discard "forward decl of gp_Pnt2d"
discard "forward decl of Geom2d_Curve"
discard "forward decl of Extrema_ExtPC2d"
type
  Geom2dAPI_ProjectPointOnCurve* {.importcpp: "Geom2dAPI_ProjectPointOnCurve",
                                  header: "Geom2dAPI_ProjectPointOnCurve.hxx",
                                  bycopy.} = object


proc `new`*(this: var Geom2dAPI_ProjectPointOnCurve; theSize: csize_t): pointer {.
    importcpp: "Geom2dAPI_ProjectPointOnCurve::operator new",
    header: "Geom2dAPI_ProjectPointOnCurve.hxx".}
proc `delete`*(this: var Geom2dAPI_ProjectPointOnCurve; theAddress: pointer) {.
    importcpp: "Geom2dAPI_ProjectPointOnCurve::operator delete",
    header: "Geom2dAPI_ProjectPointOnCurve.hxx".}
proc `new[]`*(this: var Geom2dAPI_ProjectPointOnCurve; theSize: csize_t): pointer {.
    importcpp: "Geom2dAPI_ProjectPointOnCurve::operator new[]",
    header: "Geom2dAPI_ProjectPointOnCurve.hxx".}
proc `delete[]`*(this: var Geom2dAPI_ProjectPointOnCurve; theAddress: pointer) {.
    importcpp: "Geom2dAPI_ProjectPointOnCurve::operator delete[]",
    header: "Geom2dAPI_ProjectPointOnCurve.hxx".}
proc `new`*(this: var Geom2dAPI_ProjectPointOnCurve; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "Geom2dAPI_ProjectPointOnCurve::operator new",
    header: "Geom2dAPI_ProjectPointOnCurve.hxx".}
proc `delete`*(this: var Geom2dAPI_ProjectPointOnCurve; a2: pointer; a3: pointer) {.
    importcpp: "Geom2dAPI_ProjectPointOnCurve::operator delete",
    header: "Geom2dAPI_ProjectPointOnCurve.hxx".}
proc constructGeom2dAPI_ProjectPointOnCurve*(): Geom2dAPI_ProjectPointOnCurve {.
    constructor, importcpp: "Geom2dAPI_ProjectPointOnCurve(@)",
    header: "Geom2dAPI_ProjectPointOnCurve.hxx".}
proc constructGeom2dAPI_ProjectPointOnCurve*(p: Pnt2d; curve: Handle[Geom2dCurve]): Geom2dAPI_ProjectPointOnCurve {.
    constructor, importcpp: "Geom2dAPI_ProjectPointOnCurve(@)",
    header: "Geom2dAPI_ProjectPointOnCurve.hxx".}
proc constructGeom2dAPI_ProjectPointOnCurve*(p: Pnt2d; curve: Handle[Geom2dCurve];
    umin: StandardReal; usup: StandardReal): Geom2dAPI_ProjectPointOnCurve {.
    constructor, importcpp: "Geom2dAPI_ProjectPointOnCurve(@)",
    header: "Geom2dAPI_ProjectPointOnCurve.hxx".}
proc init*(this: var Geom2dAPI_ProjectPointOnCurve; p: Pnt2d;
          curve: Handle[Geom2dCurve]) {.importcpp: "Init", header: "Geom2dAPI_ProjectPointOnCurve.hxx".}
proc init*(this: var Geom2dAPI_ProjectPointOnCurve; p: Pnt2d;
          curve: Handle[Geom2dCurve]; umin: StandardReal; usup: StandardReal) {.
    importcpp: "Init", header: "Geom2dAPI_ProjectPointOnCurve.hxx".}
proc nbPoints*(this: Geom2dAPI_ProjectPointOnCurve): int {.noSideEffect,
    importcpp: "NbPoints", header: "Geom2dAPI_ProjectPointOnCurve.hxx".}
converter `int`*(this: Geom2dAPI_ProjectPointOnCurve): int {.noSideEffect,
    importcpp: "Geom2dAPI_ProjectPointOnCurve::operator Standard_Integer",
    header: "Geom2dAPI_ProjectPointOnCurve.hxx".}
proc point*(this: Geom2dAPI_ProjectPointOnCurve; index: int): Pnt2d {.noSideEffect,
    importcpp: "Point", header: "Geom2dAPI_ProjectPointOnCurve.hxx".}
proc parameter*(this: Geom2dAPI_ProjectPointOnCurve; index: int): StandardReal {.
    noSideEffect, importcpp: "Parameter",
    header: "Geom2dAPI_ProjectPointOnCurve.hxx".}
proc parameter*(this: Geom2dAPI_ProjectPointOnCurve; index: int; u: var StandardReal) {.
    noSideEffect, importcpp: "Parameter",
    header: "Geom2dAPI_ProjectPointOnCurve.hxx".}
proc distance*(this: Geom2dAPI_ProjectPointOnCurve; index: int): StandardReal {.
    noSideEffect, importcpp: "Distance",
    header: "Geom2dAPI_ProjectPointOnCurve.hxx".}
proc nearestPoint*(this: Geom2dAPI_ProjectPointOnCurve): Pnt2d {.noSideEffect,
    importcpp: "NearestPoint", header: "Geom2dAPI_ProjectPointOnCurve.hxx".}
converter `pnt2d`*(this: Geom2dAPI_ProjectPointOnCurve): Pnt2d {.noSideEffect,
    importcpp: "Geom2dAPI_ProjectPointOnCurve::operator gp_Pnt2d",
    header: "Geom2dAPI_ProjectPointOnCurve.hxx".}
proc lowerDistanceParameter*(this: Geom2dAPI_ProjectPointOnCurve): StandardReal {.
    noSideEffect, importcpp: "LowerDistanceParameter",
    header: "Geom2dAPI_ProjectPointOnCurve.hxx".}
proc lowerDistance*(this: Geom2dAPI_ProjectPointOnCurve): StandardReal {.
    noSideEffect, importcpp: "LowerDistance",
    header: "Geom2dAPI_ProjectPointOnCurve.hxx".}
converter `standardReal`*(this: Geom2dAPI_ProjectPointOnCurve): StandardReal {.
    noSideEffect,
    importcpp: "Geom2dAPI_ProjectPointOnCurve::operator Standard_Real",
    header: "Geom2dAPI_ProjectPointOnCurve.hxx".}
proc extrema*(this: Geom2dAPI_ProjectPointOnCurve): ExtremaExtPC2d {.noSideEffect,
    importcpp: "Extrema", header: "Geom2dAPI_ProjectPointOnCurve.hxx".}