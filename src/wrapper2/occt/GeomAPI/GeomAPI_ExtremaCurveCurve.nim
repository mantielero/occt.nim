##  Created on: 1994-03-18
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
  ../Standard/Standard_Integer, ../Extrema/Extrema_ExtCC,
  ../GeomAdaptor/GeomAdaptor_Curve, ../Standard/Standard_Real, ../gp/gp_Pnt

discard "forward decl of Standard_OutOfRange"
discard "forward decl of StdFail_NotDone"
discard "forward decl of Geom_Curve"
discard "forward decl of gp_Pnt"
discard "forward decl of Extrema_ExtCC"
type
  GeomAPI_ExtremaCurveCurve* {.importcpp: "GeomAPI_ExtremaCurveCurve",
                              header: "GeomAPI_ExtremaCurveCurve.hxx", bycopy.} = object ##
                                                                                    ## !
                                                                                    ## Constructs
                                                                                    ## an
                                                                                    ## empty
                                                                                    ## algorithm
                                                                                    ## for
                                                                                    ## computing
                                                                                    ##
                                                                                    ## !
                                                                                    ## extrema
                                                                                    ## between
                                                                                    ## two
                                                                                    ## curves.
                                                                                    ## Use
                                                                                    ## an
                                                                                    ## Init
                                                                                    ## function
                                                                                    ##
                                                                                    ## !
                                                                                    ## to
                                                                                    ## define
                                                                                    ## the
                                                                                    ## curves
                                                                                    ## on
                                                                                    ## which
                                                                                    ## it
                                                                                    ## is
                                                                                    ## going
                                                                                    ## to
                                                                                    ## work.


proc constructGeomAPI_ExtremaCurveCurve*(): GeomAPI_ExtremaCurveCurve {.
    constructor, importcpp: "GeomAPI_ExtremaCurveCurve(@)",
    header: "GeomAPI_ExtremaCurveCurve.hxx".}
proc constructGeomAPI_ExtremaCurveCurve*(C1: handle[Geom_Curve];
                                        C2: handle[Geom_Curve]): GeomAPI_ExtremaCurveCurve {.
    constructor, importcpp: "GeomAPI_ExtremaCurveCurve(@)",
    header: "GeomAPI_ExtremaCurveCurve.hxx".}
proc constructGeomAPI_ExtremaCurveCurve*(C1: handle[Geom_Curve];
                                        C2: handle[Geom_Curve];
                                        U1min: Standard_Real;
                                        U1max: Standard_Real;
                                        U2min: Standard_Real; U2max: Standard_Real): GeomAPI_ExtremaCurveCurve {.
    constructor, importcpp: "GeomAPI_ExtremaCurveCurve(@)",
    header: "GeomAPI_ExtremaCurveCurve.hxx".}
proc Init*(this: var GeomAPI_ExtremaCurveCurve; C1: handle[Geom_Curve];
          C2: handle[Geom_Curve]) {.importcpp: "Init",
                                  header: "GeomAPI_ExtremaCurveCurve.hxx".}
proc Init*(this: var GeomAPI_ExtremaCurveCurve; C1: handle[Geom_Curve];
          C2: handle[Geom_Curve]; U1min: Standard_Real; U1max: Standard_Real;
          U2min: Standard_Real; U2max: Standard_Real) {.importcpp: "Init",
    header: "GeomAPI_ExtremaCurveCurve.hxx".}
proc NbExtrema*(this: GeomAPI_ExtremaCurveCurve): Standard_Integer {.noSideEffect,
    importcpp: "NbExtrema", header: "GeomAPI_ExtremaCurveCurve.hxx".}
converter `Standard_Integer`*(this: GeomAPI_ExtremaCurveCurve): Standard_Integer {.
    noSideEffect,
    importcpp: "GeomAPI_ExtremaCurveCurve::operator Standard_Integer",
    header: "GeomAPI_ExtremaCurveCurve.hxx".}
proc Points*(this: GeomAPI_ExtremaCurveCurve; Index: Standard_Integer;
            P1: var gp_Pnt; P2: var gp_Pnt) {.noSideEffect, importcpp: "Points",
                                        header: "GeomAPI_ExtremaCurveCurve.hxx".}
proc Parameters*(this: GeomAPI_ExtremaCurveCurve; Index: Standard_Integer;
                U1: var Standard_Real; U2: var Standard_Real) {.noSideEffect,
    importcpp: "Parameters", header: "GeomAPI_ExtremaCurveCurve.hxx".}
proc Distance*(this: GeomAPI_ExtremaCurveCurve; Index: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "Distance", header: "GeomAPI_ExtremaCurveCurve.hxx".}
proc NearestPoints*(this: GeomAPI_ExtremaCurveCurve; P1: var gp_Pnt; P2: var gp_Pnt) {.
    noSideEffect, importcpp: "NearestPoints",
    header: "GeomAPI_ExtremaCurveCurve.hxx".}
proc LowerDistanceParameters*(this: GeomAPI_ExtremaCurveCurve;
                             U1: var Standard_Real; U2: var Standard_Real) {.
    noSideEffect, importcpp: "LowerDistanceParameters",
    header: "GeomAPI_ExtremaCurveCurve.hxx".}
proc LowerDistance*(this: GeomAPI_ExtremaCurveCurve): Standard_Real {.noSideEffect,
    importcpp: "LowerDistance", header: "GeomAPI_ExtremaCurveCurve.hxx".}
converter `Standard_Real`*(this: GeomAPI_ExtremaCurveCurve): Standard_Real {.
    noSideEffect, importcpp: "GeomAPI_ExtremaCurveCurve::operator Standard_Real",
    header: "GeomAPI_ExtremaCurveCurve.hxx".}
proc Extrema*(this: GeomAPI_ExtremaCurveCurve): Extrema_ExtCC {.noSideEffect,
    importcpp: "Extrema", header: "GeomAPI_ExtremaCurveCurve.hxx".}
proc TotalNearestPoints*(this: var GeomAPI_ExtremaCurveCurve; P1: var gp_Pnt;
                        P2: var gp_Pnt): Standard_Boolean {.
    importcpp: "TotalNearestPoints", header: "GeomAPI_ExtremaCurveCurve.hxx".}
proc TotalLowerDistanceParameters*(this: var GeomAPI_ExtremaCurveCurve;
                                  U1: var Standard_Real; U2: var Standard_Real): Standard_Boolean {.
    importcpp: "TotalLowerDistanceParameters",
    header: "GeomAPI_ExtremaCurveCurve.hxx".}
proc TotalLowerDistance*(this: var GeomAPI_ExtremaCurveCurve): Standard_Real {.
    importcpp: "TotalLowerDistance", header: "GeomAPI_ExtremaCurveCurve.hxx".}