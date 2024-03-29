import ../adaptor2d/adaptor2d_types
import geom2dadaptor_types





##  Created on: 1993-06-03
##  Created by: Bruno DUMORTIER
##  Copyright (c) 1993-1999 Matra Datavision
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



proc newGeom2dAdaptorGHCurve*(): Geom2dAdaptorGHCurve {.cdecl, constructor,
    importcpp: "Geom2dAdaptor_GHCurve(@)", header: "Geom2dAdaptor_GHCurve.hxx".}
proc newGeom2dAdaptorGHCurve*(c: Geom2dAdaptorCurve): Geom2dAdaptorGHCurve {.cdecl,
    constructor, importcpp: "Geom2dAdaptor_GHCurve(@)", header: "Geom2dAdaptor_GHCurve.hxx".}
proc set*(this: var Geom2dAdaptorGHCurve; c: Geom2dAdaptorCurve) {.cdecl,
    importcpp: "Set", header: "Geom2dAdaptor_GHCurve.hxx".}
proc curve2d*(this: Geom2dAdaptorGHCurve): Adaptor2dCurve2d {.noSideEffect, cdecl,
    importcpp: "Curve2d", header: "Geom2dAdaptor_GHCurve.hxx".}
proc changeCurve2d*(this: var Geom2dAdaptorGHCurve): var Geom2dAdaptorCurve {.cdecl,
    importcpp: "ChangeCurve2d", header: "Geom2dAdaptor_GHCurve.hxx".}




