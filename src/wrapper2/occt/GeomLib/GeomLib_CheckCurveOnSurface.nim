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

discard "forward decl of Geom_Surface"
discard "forward decl of Geom2d_Curve"
type
  GeomLibCheckCurveOnSurface* {.importcpp: "GeomLib_CheckCurveOnSurface",
                               header: "GeomLib_CheckCurveOnSurface.hxx", bycopy.} = object ##
                                                                                       ## !
                                                                                       ## Default
                                                                                       ## contructor


proc constructGeomLibCheckCurveOnSurface*(): GeomLibCheckCurveOnSurface {.
    constructor, importcpp: "GeomLib_CheckCurveOnSurface(@)",
    header: "GeomLib_CheckCurveOnSurface.hxx".}
proc constructGeomLibCheckCurveOnSurface*(theCurve: Handle[GeomCurve];
    theSurface: Handle[GeomSurface]; theFirst: StandardReal; theLast: StandardReal;
    theTolRange: StandardReal = pConfusion()): GeomLibCheckCurveOnSurface {.
    constructor, importcpp: "GeomLib_CheckCurveOnSurface(@)",
    header: "GeomLib_CheckCurveOnSurface.hxx".}
proc init*(this: var GeomLibCheckCurveOnSurface; theCurve: Handle[GeomCurve];
          theSurface: Handle[GeomSurface]; theFirst: StandardReal;
          theLast: StandardReal; theTolRange: StandardReal = pConfusion()) {.
    importcpp: "Init", header: "GeomLib_CheckCurveOnSurface.hxx".}
proc init*(this: var GeomLibCheckCurveOnSurface) {.importcpp: "Init",
    header: "GeomLib_CheckCurveOnSurface.hxx".}
proc perform*(this: var GeomLibCheckCurveOnSurface; thePCurve: Handle[Geom2dCurve];
             isTheMultyTheradDisabled: StandardBoolean = standardFalse) {.
    importcpp: "Perform", header: "GeomLib_CheckCurveOnSurface.hxx".}
proc curve*(this: GeomLibCheckCurveOnSurface): Handle[GeomCurve] {.noSideEffect,
    importcpp: "Curve", header: "GeomLib_CheckCurveOnSurface.hxx".}
proc surface*(this: GeomLibCheckCurveOnSurface): Handle[GeomSurface] {.noSideEffect,
    importcpp: "Surface", header: "GeomLib_CheckCurveOnSurface.hxx".}
proc range*(this: var GeomLibCheckCurveOnSurface; theFirst: var StandardReal;
           theLast: var StandardReal) {.importcpp: "Range",
                                     header: "GeomLib_CheckCurveOnSurface.hxx".}
proc isDone*(this: GeomLibCheckCurveOnSurface): StandardBoolean {.noSideEffect,
    importcpp: "IsDone", header: "GeomLib_CheckCurveOnSurface.hxx".}
proc errorStatus*(this: GeomLibCheckCurveOnSurface): StandardInteger {.noSideEffect,
    importcpp: "ErrorStatus", header: "GeomLib_CheckCurveOnSurface.hxx".}
proc maxDistance*(this: GeomLibCheckCurveOnSurface): StandardReal {.noSideEffect,
    importcpp: "MaxDistance", header: "GeomLib_CheckCurveOnSurface.hxx".}
proc maxParameter*(this: GeomLibCheckCurveOnSurface): StandardReal {.noSideEffect,
    importcpp: "MaxParameter", header: "GeomLib_CheckCurveOnSurface.hxx".}

