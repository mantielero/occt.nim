import brepadaptor_types
import ../adaptor3d/adaptor3d_types





##  Created on: 1993-02-19
##  Created by: Remi LEQUETTE
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



proc newBRepAdaptorHCurve*(): BRepAdaptorHCurve {.cdecl, constructor,
    importcpp: "BRepAdaptor_HCurve(@)", header: "BRepAdaptor_HCurve.hxx".}
proc newBRepAdaptorHCurve*(c: BRepAdaptorCurve): BRepAdaptorHCurve {.cdecl,
    constructor, importcpp: "BRepAdaptor_HCurve(@)", header: "BRepAdaptor_HCurve.hxx".}
proc set*(this: var BRepAdaptorHCurve; c: BRepAdaptorCurve) {.cdecl, importcpp: "Set",
    header: "BRepAdaptor_HCurve.hxx".}
proc curve*(this: BRepAdaptorHCurve): Adaptor3dCurve {.noSideEffect, cdecl,
    importcpp: "Curve", header: "BRepAdaptor_HCurve.hxx".}
proc getCurve*(this: var BRepAdaptorHCurve): var Adaptor3dCurve {.cdecl,
    importcpp: "GetCurve", header: "BRepAdaptor_HCurve.hxx".}
proc changeCurve*(this: var BRepAdaptorHCurve): var BRepAdaptorCurve {.cdecl,
    importcpp: "ChangeCurve", header: "BRepAdaptor_HCurve.hxx".}




