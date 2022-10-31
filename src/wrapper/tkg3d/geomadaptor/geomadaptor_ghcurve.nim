import geomadaptor_types
import ../tkg3d/adaptor3d/adaptor3d_types



##  Created on: 1992-10-08
##  Created by: Isabelle GRIGNON
##  Copyright (c) 1992-1999 Matra Datavision
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



proc newGeomAdaptorGHCurve*(): GeomAdaptorGHCurve {.cdecl, constructor,
    importcpp: "GeomAdaptor_GHCurve(@)", header: "GeomAdaptor_GHCurve.hxx".}
proc newGeomAdaptorGHCurve*(c: GeomAdaptorCurve): GeomAdaptorGHCurve {.cdecl,
    constructor, importcpp: "GeomAdaptor_GHCurve(@)", header: "GeomAdaptor_GHCurve.hxx".}
proc set*(this: var GeomAdaptorGHCurve; c: GeomAdaptorCurve) {.cdecl, importcpp: "Set",
    header: "GeomAdaptor_GHCurve.hxx".}
proc curve*(this: GeomAdaptorGHCurve): Adaptor3dCurve {.noSideEffect, cdecl,
    importcpp: "Curve", header: "GeomAdaptor_GHCurve.hxx".}
proc getCurve*(this: var GeomAdaptorGHCurve): var Adaptor3dCurve {.cdecl,
    importcpp: "GetCurve", header: "GeomAdaptor_GHCurve.hxx".}
proc changeCurve*(this: var GeomAdaptorGHCurve): var GeomAdaptorCurve {.cdecl,
    importcpp: "ChangeCurve", header: "GeomAdaptor_GHCurve.hxx".}



