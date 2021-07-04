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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer, ../Extrema/Extrema_ExtPC2d,
  ../Geom2dAdaptor/Geom2dAdaptor_Curve

discard "forward decl of Standard_OutOfRange"
discard "forward decl of StdFail_NotDone"
discard "forward decl of gp_Pnt2d"
discard "forward decl of Geom2d_Curve"
discard "forward decl of Extrema_ExtPC2d"
type
  Geom2dAPI_ProjectPointOnCurve* {.importcpp: "Geom2dAPI_ProjectPointOnCurve",
                                  header: "Geom2dAPI_ProjectPointOnCurve.hxx",
                                  bycopy.} = object ## ! Constructs an empty projector algorithm. Use an Init
                                                 ## ! function to define the point and the curve on which it is going to work.


proc constructGeom2dAPI_ProjectPointOnCurve*(): Geom2dAPI_ProjectPointOnCurve {.
    constructor, importcpp: "Geom2dAPI_ProjectPointOnCurve(@)",
    header: "Geom2dAPI_ProjectPointOnCurve.hxx".}
proc constructGeom2dAPI_ProjectPointOnCurve*(P: gp_Pnt2d;
    Curve: handle[Geom2d_Curve]): Geom2dAPI_ProjectPointOnCurve {.constructor,
    importcpp: "Geom2dAPI_ProjectPointOnCurve(@)",
    header: "Geom2dAPI_ProjectPointOnCurve.hxx".}
proc constructGeom2dAPI_ProjectPointOnCurve*(P: gp_Pnt2d;
    Curve: handle[Geom2d_Curve]; Umin: Standard_Real; Usup: Standard_Real): Geom2dAPI_ProjectPointOnCurve {.
    constructor, importcpp: "Geom2dAPI_ProjectPointOnCurve(@)",
    header: "Geom2dAPI_ProjectPointOnCurve.hxx".}
proc Init*(this: var Geom2dAPI_ProjectPointOnCurve; P: gp_Pnt2d;
          Curve: handle[Geom2d_Curve]) {.importcpp: "Init", header: "Geom2dAPI_ProjectPointOnCurve.hxx".}
proc Init*(this: var Geom2dAPI_ProjectPointOnCurve; P: gp_Pnt2d;
          Curve: handle[Geom2d_Curve]; Umin: Standard_Real; Usup: Standard_Real) {.
    importcpp: "Init", header: "Geom2dAPI_ProjectPointOnCurve.hxx".}
proc NbPoints*(this: Geom2dAPI_ProjectPointOnCurve): Standard_Integer {.
    noSideEffect, importcpp: "NbPoints",
    header: "Geom2dAPI_ProjectPointOnCurve.hxx".}
converter `Standard_Integer`*(this: Geom2dAPI_ProjectPointOnCurve): Standard_Integer {.
    noSideEffect,
    importcpp: "Geom2dAPI_ProjectPointOnCurve::operator Standard_Integer",
    header: "Geom2dAPI_ProjectPointOnCurve.hxx".}
proc Point*(this: Geom2dAPI_ProjectPointOnCurve; Index: Standard_Integer): gp_Pnt2d {.
    noSideEffect, importcpp: "Point", header: "Geom2dAPI_ProjectPointOnCurve.hxx".}
proc Parameter*(this: Geom2dAPI_ProjectPointOnCurve; Index: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "Parameter",
    header: "Geom2dAPI_ProjectPointOnCurve.hxx".}
proc Parameter*(this: Geom2dAPI_ProjectPointOnCurve; Index: Standard_Integer;
               U: var Standard_Real) {.noSideEffect, importcpp: "Parameter",
                                    header: "Geom2dAPI_ProjectPointOnCurve.hxx".}
proc Distance*(this: Geom2dAPI_ProjectPointOnCurve; Index: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "Distance",
    header: "Geom2dAPI_ProjectPointOnCurve.hxx".}
proc NearestPoint*(this: Geom2dAPI_ProjectPointOnCurve): gp_Pnt2d {.noSideEffect,
    importcpp: "NearestPoint", header: "Geom2dAPI_ProjectPointOnCurve.hxx".}
converter `gp_Pnt2d`*(this: Geom2dAPI_ProjectPointOnCurve): gp_Pnt2d {.noSideEffect,
    importcpp: "Geom2dAPI_ProjectPointOnCurve::operator gp_Pnt2d",
    header: "Geom2dAPI_ProjectPointOnCurve.hxx".}
proc LowerDistanceParameter*(this: Geom2dAPI_ProjectPointOnCurve): Standard_Real {.
    noSideEffect, importcpp: "LowerDistanceParameter",
    header: "Geom2dAPI_ProjectPointOnCurve.hxx".}
proc LowerDistance*(this: Geom2dAPI_ProjectPointOnCurve): Standard_Real {.
    noSideEffect, importcpp: "LowerDistance",
    header: "Geom2dAPI_ProjectPointOnCurve.hxx".}
converter `Standard_Real`*(this: Geom2dAPI_ProjectPointOnCurve): Standard_Real {.
    noSideEffect,
    importcpp: "Geom2dAPI_ProjectPointOnCurve::operator Standard_Real",
    header: "Geom2dAPI_ProjectPointOnCurve.hxx".}
proc Extrema*(this: Geom2dAPI_ProjectPointOnCurve): Extrema_ExtPC2d {.noSideEffect,
    importcpp: "Extrema", header: "Geom2dAPI_ProjectPointOnCurve.hxx".}