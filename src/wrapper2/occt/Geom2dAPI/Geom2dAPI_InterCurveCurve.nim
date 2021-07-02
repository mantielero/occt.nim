##  Created on: 1994-03-24
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

discard "forward decl of Geom2d_Curve"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_NullObject"
discard "forward decl of gp_Pnt2d"
discard "forward decl of Geom2dInt_GInter"
type
  Geom2dAPI_InterCurveCurve* {.importcpp: "Geom2dAPI_InterCurveCurve",
                              header: "Geom2dAPI_InterCurveCurve.hxx", bycopy.} = object ##
                                                                                    ## !
                                                                                    ## Create
                                                                                    ## an
                                                                                    ## empty
                                                                                    ## intersector.
                                                                                    ## Use
                                                                                    ## the
                                                                                    ##
                                                                                    ## !
                                                                                    ## function
                                                                                    ## Init
                                                                                    ## for
                                                                                    ## further
                                                                                    ## initialization
                                                                                    ## of
                                                                                    ## the
                                                                                    ## intersection
                                                                                    ##
                                                                                    ## !
                                                                                    ## algorithm
                                                                                    ## by
                                                                                    ## curves
                                                                                    ## or
                                                                                    ## curve.


proc constructGeom2dAPI_InterCurveCurve*(): Geom2dAPI_InterCurveCurve {.
    constructor, importcpp: "Geom2dAPI_InterCurveCurve(@)",
    header: "Geom2dAPI_InterCurveCurve.hxx".}
proc constructGeom2dAPI_InterCurveCurve*(c1: Handle[Geom2dCurve];
                                        c2: Handle[Geom2dCurve];
                                        tol: StandardReal = 1.0e-6): Geom2dAPI_InterCurveCurve {.
    constructor, importcpp: "Geom2dAPI_InterCurveCurve(@)",
    header: "Geom2dAPI_InterCurveCurve.hxx".}
proc constructGeom2dAPI_InterCurveCurve*(c1: Handle[Geom2dCurve];
                                        tol: StandardReal = 1.0e-6): Geom2dAPI_InterCurveCurve {.
    constructor, importcpp: "Geom2dAPI_InterCurveCurve(@)",
    header: "Geom2dAPI_InterCurveCurve.hxx".}
proc init*(this: var Geom2dAPI_InterCurveCurve; c1: Handle[Geom2dCurve];
          c2: Handle[Geom2dCurve]; tol: StandardReal = 1.0e-6) {.importcpp: "Init",
    header: "Geom2dAPI_InterCurveCurve.hxx".}
proc init*(this: var Geom2dAPI_InterCurveCurve; c1: Handle[Geom2dCurve];
          tol: StandardReal = 1.0e-6) {.importcpp: "Init",
                                    header: "Geom2dAPI_InterCurveCurve.hxx".}
proc nbPoints*(this: Geom2dAPI_InterCurveCurve): StandardInteger {.noSideEffect,
    importcpp: "NbPoints", header: "Geom2dAPI_InterCurveCurve.hxx".}
proc point*(this: Geom2dAPI_InterCurveCurve; index: StandardInteger): GpPnt2d {.
    noSideEffect, importcpp: "Point", header: "Geom2dAPI_InterCurveCurve.hxx".}
proc nbSegments*(this: Geom2dAPI_InterCurveCurve): StandardInteger {.noSideEffect,
    importcpp: "NbSegments", header: "Geom2dAPI_InterCurveCurve.hxx".}
proc segment*(this: Geom2dAPI_InterCurveCurve; index: StandardInteger;
             curve1: var Handle[Geom2dCurve]; curve2: var Handle[Geom2dCurve]) {.
    noSideEffect, importcpp: "Segment", header: "Geom2dAPI_InterCurveCurve.hxx".}
proc intersector*(this: Geom2dAPI_InterCurveCurve): Geom2dIntGInter {.noSideEffect,
    importcpp: "Intersector", header: "Geom2dAPI_InterCurveCurve.hxx".}

