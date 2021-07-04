##  Created by: Nikolai BUKHALOV
##  Copyright (c) 2015 OPEN CASCADE SAS
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
  ../Geom/Geom_Curve, ../Precision/Precision, ../Standard/Standard

discard "forward decl of Geom_Surface"
discard "forward decl of Geom2d_Curve"
type
  GeomLib_CheckCurveOnSurface* {.importcpp: "GeomLib_CheckCurveOnSurface",
                                header: "GeomLib_CheckCurveOnSurface.hxx", bycopy.} = object ##
                                                                                        ## !
                                                                                        ## Default
                                                                                        ## contructor


proc constructGeomLib_CheckCurveOnSurface*(): GeomLib_CheckCurveOnSurface {.
    constructor, importcpp: "GeomLib_CheckCurveOnSurface(@)",
    header: "GeomLib_CheckCurveOnSurface.hxx".}
proc constructGeomLib_CheckCurveOnSurface*(theCurve: handle[Geom_Curve];
    theSurface: handle[Geom_Surface]; theFirst: Standard_Real;
    theLast: Standard_Real; theTolRange: Standard_Real = PConfusion()): GeomLib_CheckCurveOnSurface {.
    constructor, importcpp: "GeomLib_CheckCurveOnSurface(@)",
    header: "GeomLib_CheckCurveOnSurface.hxx".}
proc Init*(this: var GeomLib_CheckCurveOnSurface; theCurve: handle[Geom_Curve];
          theSurface: handle[Geom_Surface]; theFirst: Standard_Real;
          theLast: Standard_Real; theTolRange: Standard_Real = PConfusion()) {.
    importcpp: "Init", header: "GeomLib_CheckCurveOnSurface.hxx".}
proc Init*(this: var GeomLib_CheckCurveOnSurface) {.importcpp: "Init",
    header: "GeomLib_CheckCurveOnSurface.hxx".}
proc Perform*(this: var GeomLib_CheckCurveOnSurface;
             thePCurve: handle[Geom2d_Curve];
             isTheMultyTheradDisabled: Standard_Boolean = Standard_False) {.
    importcpp: "Perform", header: "GeomLib_CheckCurveOnSurface.hxx".}
proc Curve*(this: GeomLib_CheckCurveOnSurface): handle[Geom_Curve] {.noSideEffect,
    importcpp: "Curve", header: "GeomLib_CheckCurveOnSurface.hxx".}
proc Surface*(this: GeomLib_CheckCurveOnSurface): handle[Geom_Surface] {.
    noSideEffect, importcpp: "Surface", header: "GeomLib_CheckCurveOnSurface.hxx".}
proc Range*(this: var GeomLib_CheckCurveOnSurface; theFirst: var Standard_Real;
           theLast: var Standard_Real) {.importcpp: "Range",
                                      header: "GeomLib_CheckCurveOnSurface.hxx".}
proc IsDone*(this: GeomLib_CheckCurveOnSurface): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "GeomLib_CheckCurveOnSurface.hxx".}
proc ErrorStatus*(this: GeomLib_CheckCurveOnSurface): Standard_Integer {.
    noSideEffect, importcpp: "ErrorStatus",
    header: "GeomLib_CheckCurveOnSurface.hxx".}
proc MaxDistance*(this: GeomLib_CheckCurveOnSurface): Standard_Real {.noSideEffect,
    importcpp: "MaxDistance", header: "GeomLib_CheckCurveOnSurface.hxx".}
proc MaxParameter*(this: GeomLib_CheckCurveOnSurface): Standard_Real {.noSideEffect,
    importcpp: "MaxParameter", header: "GeomLib_CheckCurveOnSurface.hxx".}