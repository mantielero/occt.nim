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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  ../Geom2dInt/Geom2dInt_GInter, ../Standard/Standard_Real,
  ../Standard/Standard_Integer

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
proc constructGeom2dAPI_InterCurveCurve*(C1: handle[Geom2d_Curve];
                                        C2: handle[Geom2d_Curve];
                                        Tol: Standard_Real = 1.0e-6): Geom2dAPI_InterCurveCurve {.
    constructor, importcpp: "Geom2dAPI_InterCurveCurve(@)",
    header: "Geom2dAPI_InterCurveCurve.hxx".}
proc constructGeom2dAPI_InterCurveCurve*(C1: handle[Geom2d_Curve];
                                        Tol: Standard_Real = 1.0e-6): Geom2dAPI_InterCurveCurve {.
    constructor, importcpp: "Geom2dAPI_InterCurveCurve(@)",
    header: "Geom2dAPI_InterCurveCurve.hxx".}
proc Init*(this: var Geom2dAPI_InterCurveCurve; C1: handle[Geom2d_Curve];
          C2: handle[Geom2d_Curve]; Tol: Standard_Real = 1.0e-6) {.importcpp: "Init",
    header: "Geom2dAPI_InterCurveCurve.hxx".}
proc Init*(this: var Geom2dAPI_InterCurveCurve; C1: handle[Geom2d_Curve];
          Tol: Standard_Real = 1.0e-6) {.importcpp: "Init",
                                     header: "Geom2dAPI_InterCurveCurve.hxx".}
proc NbPoints*(this: Geom2dAPI_InterCurveCurve): Standard_Integer {.noSideEffect,
    importcpp: "NbPoints", header: "Geom2dAPI_InterCurveCurve.hxx".}
proc Point*(this: Geom2dAPI_InterCurveCurve; Index: Standard_Integer): gp_Pnt2d {.
    noSideEffect, importcpp: "Point", header: "Geom2dAPI_InterCurveCurve.hxx".}
proc NbSegments*(this: Geom2dAPI_InterCurveCurve): Standard_Integer {.noSideEffect,
    importcpp: "NbSegments", header: "Geom2dAPI_InterCurveCurve.hxx".}
proc Segment*(this: Geom2dAPI_InterCurveCurve; Index: Standard_Integer;
             Curve1: var handle[Geom2d_Curve]; Curve2: var handle[Geom2d_Curve]) {.
    noSideEffect, importcpp: "Segment", header: "Geom2dAPI_InterCurveCurve.hxx".}
proc Intersector*(this: Geom2dAPI_InterCurveCurve): Geom2dInt_GInter {.noSideEffect,
    importcpp: "Intersector", header: "Geom2dAPI_InterCurveCurve.hxx".}