import brepadaptor_types
import ../../tkg3d/adaptor3d/adaptor3d_types



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



proc newBRepAdaptorHSurface*(): BRepAdaptorHSurface {.cdecl, constructor,
    importcpp: "BRepAdaptor_HSurface(@)", header: "BRepAdaptor_HSurface.hxx".}
proc newBRepAdaptorHSurface*(s: BRepAdaptorSurface): BRepAdaptorHSurface {.cdecl,
    constructor, importcpp: "BRepAdaptor_HSurface(@)", header: "BRepAdaptor_HSurface.hxx".}
proc set*(this: var BRepAdaptorHSurface; s: BRepAdaptorSurface) {.cdecl,
    importcpp: "Set", header: "BRepAdaptor_HSurface.hxx".}
proc surface*(this: BRepAdaptorHSurface): Adaptor3dSurface {.noSideEffect, cdecl,
    importcpp: "Surface", header: "BRepAdaptor_HSurface.hxx".}
proc changeSurface*(this: var BRepAdaptorHSurface): var BRepAdaptorSurface {.cdecl,
    importcpp: "ChangeSurface", header: "BRepAdaptor_HSurface.hxx".}



