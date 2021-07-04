##  Created on: 1994-03-17
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
  ../Standard/Standard_Integer, ../Extrema/Extrema_ExtPC,
  ../GeomAdaptor/GeomAdaptor_Curve

discard "forward decl of Standard_OutOfRange"
discard "forward decl of StdFail_NotDone"
discard "forward decl of gp_Pnt"
discard "forward decl of Geom_Curve"
discard "forward decl of Extrema_ExtPC"
type
  GeomAPI_ProjectPointOnCurve* {.importcpp: "GeomAPI_ProjectPointOnCurve",
                                header: "GeomAPI_ProjectPointOnCurve.hxx", bycopy.} = object ##
                                                                                        ## !
                                                                                        ## Creates
                                                                                        ## an
                                                                                        ## empty
                                                                                        ## object.
                                                                                        ## Use
                                                                                        ## an
                                                                                        ##
                                                                                        ## !
                                                                                        ## Init
                                                                                        ## function
                                                                                        ## for
                                                                                        ## further
                                                                                        ## initialization.


proc constructGeomAPI_ProjectPointOnCurve*(): GeomAPI_ProjectPointOnCurve {.
    constructor, importcpp: "GeomAPI_ProjectPointOnCurve(@)",
    header: "GeomAPI_ProjectPointOnCurve.hxx".}
proc constructGeomAPI_ProjectPointOnCurve*(P: gp_Pnt; Curve: handle[Geom_Curve]): GeomAPI_ProjectPointOnCurve {.
    constructor, importcpp: "GeomAPI_ProjectPointOnCurve(@)",
    header: "GeomAPI_ProjectPointOnCurve.hxx".}
proc constructGeomAPI_ProjectPointOnCurve*(P: gp_Pnt; Curve: handle[Geom_Curve];
    Umin: Standard_Real; Usup: Standard_Real): GeomAPI_ProjectPointOnCurve {.
    constructor, importcpp: "GeomAPI_ProjectPointOnCurve(@)",
    header: "GeomAPI_ProjectPointOnCurve.hxx".}
proc Init*(this: var GeomAPI_ProjectPointOnCurve; P: gp_Pnt; Curve: handle[Geom_Curve]) {.
    importcpp: "Init", header: "GeomAPI_ProjectPointOnCurve.hxx".}
proc Init*(this: var GeomAPI_ProjectPointOnCurve; P: gp_Pnt;
          Curve: handle[Geom_Curve]; Umin: Standard_Real; Usup: Standard_Real) {.
    importcpp: "Init", header: "GeomAPI_ProjectPointOnCurve.hxx".}
proc Init*(this: var GeomAPI_ProjectPointOnCurve; Curve: handle[Geom_Curve];
          Umin: Standard_Real; Usup: Standard_Real) {.importcpp: "Init",
    header: "GeomAPI_ProjectPointOnCurve.hxx".}
proc Perform*(this: var GeomAPI_ProjectPointOnCurve; P: gp_Pnt) {.
    importcpp: "Perform", header: "GeomAPI_ProjectPointOnCurve.hxx".}
proc NbPoints*(this: GeomAPI_ProjectPointOnCurve): Standard_Integer {.noSideEffect,
    importcpp: "NbPoints", header: "GeomAPI_ProjectPointOnCurve.hxx".}
converter `Standard_Integer`*(this: GeomAPI_ProjectPointOnCurve): Standard_Integer {.
    noSideEffect,
    importcpp: "GeomAPI_ProjectPointOnCurve::operator Standard_Integer",
    header: "GeomAPI_ProjectPointOnCurve.hxx".}
proc Point*(this: GeomAPI_ProjectPointOnCurve; Index: Standard_Integer): gp_Pnt {.
    noSideEffect, importcpp: "Point", header: "GeomAPI_ProjectPointOnCurve.hxx".}
proc Parameter*(this: GeomAPI_ProjectPointOnCurve; Index: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "Parameter", header: "GeomAPI_ProjectPointOnCurve.hxx".}
proc Parameter*(this: GeomAPI_ProjectPointOnCurve; Index: Standard_Integer;
               U: var Standard_Real) {.noSideEffect, importcpp: "Parameter",
                                    header: "GeomAPI_ProjectPointOnCurve.hxx".}
proc Distance*(this: GeomAPI_ProjectPointOnCurve; Index: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "Distance", header: "GeomAPI_ProjectPointOnCurve.hxx".}
proc NearestPoint*(this: GeomAPI_ProjectPointOnCurve): gp_Pnt {.noSideEffect,
    importcpp: "NearestPoint", header: "GeomAPI_ProjectPointOnCurve.hxx".}
converter `gp_Pnt`*(this: GeomAPI_ProjectPointOnCurve): gp_Pnt {.noSideEffect,
    importcpp: "GeomAPI_ProjectPointOnCurve::operator gp_Pnt",
    header: "GeomAPI_ProjectPointOnCurve.hxx".}
proc LowerDistanceParameter*(this: GeomAPI_ProjectPointOnCurve): Standard_Real {.
    noSideEffect, importcpp: "LowerDistanceParameter",
    header: "GeomAPI_ProjectPointOnCurve.hxx".}
proc LowerDistance*(this: GeomAPI_ProjectPointOnCurve): Standard_Real {.
    noSideEffect, importcpp: "LowerDistance",
    header: "GeomAPI_ProjectPointOnCurve.hxx".}
converter `Standard_Real`*(this: GeomAPI_ProjectPointOnCurve): Standard_Real {.
    noSideEffect,
    importcpp: "GeomAPI_ProjectPointOnCurve::operator Standard_Real",
    header: "GeomAPI_ProjectPointOnCurve.hxx".}
proc Extrema*(this: GeomAPI_ProjectPointOnCurve): Extrema_ExtPC {.noSideEffect,
    importcpp: "Extrema", header: "GeomAPI_ProjectPointOnCurve.hxx".}