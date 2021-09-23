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
  ../Standard/Standard_Integer, ../Extrema/Extrema_ExtCC2d,
  ../Geom2dAdaptor/Geom2dAdaptor_Curve

discard "forward decl of Standard_OutOfRange"
discard "forward decl of StdFail_NotDone"
discard "forward decl of Geom2d_Curve"
discard "forward decl of gp_Pnt2d"
discard "forward decl of Extrema_ExtCC2d"
type
  Geom2dAPI_ExtremaCurveCurve* {.importcpp: "Geom2dAPI_ExtremaCurveCurve",
                                header: "Geom2dAPI_ExtremaCurveCurve.hxx", bycopy.} = object ##
                                                                                        ## !
                                                                                        ## Computes
                                                                                        ## the
                                                                                        ## extrema
                                                                                        ## between
                                                                                        ##
                                                                                        ## !
                                                                                        ## -
                                                                                        ## the
                                                                                        ## portion
                                                                                        ## of
                                                                                        ## the
                                                                                        ## curve
                                                                                        ## C1
                                                                                        ## limited
                                                                                        ## by
                                                                                        ## the
                                                                                        ## two
                                                                                        ##
                                                                                        ## !
                                                                                        ## points
                                                                                        ## of
                                                                                        ## parameter
                                                                                        ## (U1min,U1max),
                                                                                        ## and
                                                                                        ##
                                                                                        ## !
                                                                                        ## -
                                                                                        ## the
                                                                                        ## portion
                                                                                        ## of
                                                                                        ## the
                                                                                        ## curve
                                                                                        ## C2
                                                                                        ## limited
                                                                                        ## by
                                                                                        ## the
                                                                                        ## two
                                                                                        ##
                                                                                        ## !
                                                                                        ## points
                                                                                        ## of
                                                                                        ## parameter
                                                                                        ## (U2min,U2max).
                                                                                        ##
                                                                                        ## !
                                                                                        ## Warning
                                                                                        ##
                                                                                        ## !
                                                                                        ## Use
                                                                                        ## the
                                                                                        ## function
                                                                                        ## NbExtrema
                                                                                        ## to
                                                                                        ## obtain
                                                                                        ## the
                                                                                        ## number
                                                                                        ##
                                                                                        ## !
                                                                                        ## of
                                                                                        ## solutions.
                                                                                        ## If
                                                                                        ## this
                                                                                        ## algorithm
                                                                                        ## fails,
                                                                                        ## NbExtrema
                                                                                        ## returns
                                                                                        ## 0.


proc constructGeom2dAPI_ExtremaCurveCurve*(C1: handle[Geom2d_Curve];
    C2: handle[Geom2d_Curve]; U1min: Standard_Real; U1max: Standard_Real;
    U2min: Standard_Real; U2max: Standard_Real): Geom2dAPI_ExtremaCurveCurve {.
    constructor, importcpp: "Geom2dAPI_ExtremaCurveCurve(@)",
    header: "Geom2dAPI_ExtremaCurveCurve.hxx".}
proc NbExtrema*(this: Geom2dAPI_ExtremaCurveCurve): Standard_Integer {.noSideEffect,
    importcpp: "NbExtrema", header: "Geom2dAPI_ExtremaCurveCurve.hxx".}
converter `Standard_Integer`*(this: Geom2dAPI_ExtremaCurveCurve): Standard_Integer {.
    noSideEffect,
    importcpp: "Geom2dAPI_ExtremaCurveCurve::operator Standard_Integer",
    header: "Geom2dAPI_ExtremaCurveCurve.hxx".}
proc Points*(this: Geom2dAPI_ExtremaCurveCurve; Index: Standard_Integer;
            P1: var gp_Pnt2d; P2: var gp_Pnt2d) {.noSideEffect, importcpp: "Points",
    header: "Geom2dAPI_ExtremaCurveCurve.hxx".}
proc Parameters*(this: Geom2dAPI_ExtremaCurveCurve; Index: Standard_Integer;
                U1: var Standard_Real; U2: var Standard_Real) {.noSideEffect,
    importcpp: "Parameters", header: "Geom2dAPI_ExtremaCurveCurve.hxx".}
proc Distance*(this: Geom2dAPI_ExtremaCurveCurve; Index: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "Distance", header: "Geom2dAPI_ExtremaCurveCurve.hxx".}
proc NearestPoints*(this: Geom2dAPI_ExtremaCurveCurve; P1: var gp_Pnt2d;
                   P2: var gp_Pnt2d) {.noSideEffect, importcpp: "NearestPoints",
                                    header: "Geom2dAPI_ExtremaCurveCurve.hxx".}
proc LowerDistanceParameters*(this: Geom2dAPI_ExtremaCurveCurve;
                             U1: var Standard_Real; U2: var Standard_Real) {.
    noSideEffect, importcpp: "LowerDistanceParameters",
    header: "Geom2dAPI_ExtremaCurveCurve.hxx".}
proc LowerDistance*(this: Geom2dAPI_ExtremaCurveCurve): Standard_Real {.
    noSideEffect, importcpp: "LowerDistance",
    header: "Geom2dAPI_ExtremaCurveCurve.hxx".}
converter `Standard_Real`*(this: Geom2dAPI_ExtremaCurveCurve): Standard_Real {.
    noSideEffect,
    importcpp: "Geom2dAPI_ExtremaCurveCurve::operator Standard_Real",
    header: "Geom2dAPI_ExtremaCurveCurve.hxx".}
proc Extrema*(this: Geom2dAPI_ExtremaCurveCurve): Extrema_ExtCC2d {.noSideEffect,
    importcpp: "Extrema", header: "Geom2dAPI_ExtremaCurveCurve.hxx".}