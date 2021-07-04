##  Created by: Eugeny MALTCHIKOV
##  Copyright (c) 2014 OPEN CASCADE SAS
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
  ../GeomLib/GeomLib_CheckCurveOnSurface

## ! Computes the max distance between edge and its
## ! 2d representation on the face.

type
  BRepLib_CheckCurveOnSurface* {.importcpp: "BRepLib_CheckCurveOnSurface",
                                header: "BRepLib_CheckCurveOnSurface.hxx", bycopy.} = object ##
                                                                                        ## !
                                                                                        ## Default
                                                                                        ## contructor
                                                                                        ##
                                                                                        ## !
                                                                                        ## Computes
                                                                                        ## the
                                                                                        ## max
                                                                                        ## distance
                                                                                        ## for
                                                                                        ## the
                                                                                        ## 3d
                                                                                        ## curve
                                                                                        ## of
                                                                                        ## <myCOnSurfGeom>
                                                                                        ##
                                                                                        ## !
                                                                                        ## and
                                                                                        ## 2d
                                                                                        ## curve
                                                                                        ## <thePCurve>
                                                                                        ##
                                                                                        ## !
                                                                                        ## If
                                                                                        ## isTheMultyTheadDisabled
                                                                                        ## ==
                                                                                        ## TRUE
                                                                                        ## then
                                                                                        ## computation
                                                                                        ## will
                                                                                        ## be
                                                                                        ## made
                                                                                        ##
                                                                                        ## !
                                                                                        ## without
                                                                                        ## any
                                                                                        ## parallelization.


proc constructBRepLib_CheckCurveOnSurface*(): BRepLib_CheckCurveOnSurface {.
    constructor, importcpp: "BRepLib_CheckCurveOnSurface(@)",
    header: "BRepLib_CheckCurveOnSurface.hxx".}
proc constructBRepLib_CheckCurveOnSurface*(theEdge: TopoDS_Edge;
    theFace: TopoDS_Face): BRepLib_CheckCurveOnSurface {.constructor,
    importcpp: "BRepLib_CheckCurveOnSurface(@)",
    header: "BRepLib_CheckCurveOnSurface.hxx".}
proc Init*(this: var BRepLib_CheckCurveOnSurface; theEdge: TopoDS_Edge;
          theFace: TopoDS_Face) {.importcpp: "Init",
                                header: "BRepLib_CheckCurveOnSurface.hxx".}
proc Perform*(this: var BRepLib_CheckCurveOnSurface;
             isTheMultyTheradDisabled: Standard_Boolean = Standard_False) {.
    importcpp: "Perform", header: "BRepLib_CheckCurveOnSurface.hxx".}
proc Curve*(this: BRepLib_CheckCurveOnSurface): handle[Geom_Curve] {.noSideEffect,
    importcpp: "Curve", header: "BRepLib_CheckCurveOnSurface.hxx".}
proc PCurve*(this: BRepLib_CheckCurveOnSurface): handle[Geom2d_Curve] {.
    noSideEffect, importcpp: "PCurve", header: "BRepLib_CheckCurveOnSurface.hxx".}
proc PCurve2*(this: BRepLib_CheckCurveOnSurface): handle[Geom2d_Curve] {.
    noSideEffect, importcpp: "PCurve2", header: "BRepLib_CheckCurveOnSurface.hxx".}
proc Surface*(this: BRepLib_CheckCurveOnSurface): handle[Geom_Surface] {.
    noSideEffect, importcpp: "Surface", header: "BRepLib_CheckCurveOnSurface.hxx".}
proc Range*(this: var BRepLib_CheckCurveOnSurface; theFirst: var Standard_Real;
           theLast: var Standard_Real) {.importcpp: "Range",
                                      header: "BRepLib_CheckCurveOnSurface.hxx".}
proc IsDone*(this: BRepLib_CheckCurveOnSurface): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "BRepLib_CheckCurveOnSurface.hxx".}
proc ErrorStatus*(this: BRepLib_CheckCurveOnSurface): Standard_Integer {.
    noSideEffect, importcpp: "ErrorStatus",
    header: "BRepLib_CheckCurveOnSurface.hxx".}
proc MaxDistance*(this: BRepLib_CheckCurveOnSurface): Standard_Real {.noSideEffect,
    importcpp: "MaxDistance", header: "BRepLib_CheckCurveOnSurface.hxx".}
proc MaxParameter*(this: BRepLib_CheckCurveOnSurface): Standard_Real {.noSideEffect,
    importcpp: "MaxParameter", header: "BRepLib_CheckCurveOnSurface.hxx".}