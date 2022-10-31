import adaptor2d_types





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



proc newAdaptor2dHLine2d*(): Adaptor2dHLine2d {.cdecl, constructor,
    importcpp: "Adaptor2d_HLine2d(@)", header: "Adaptor2d_HLine2d.hxx".}
proc newAdaptor2dHLine2d*(c: Adaptor2dLine2d): Adaptor2dHLine2d {.cdecl, constructor,
    importcpp: "Adaptor2d_HLine2d(@)", header: "Adaptor2d_HLine2d.hxx".}
proc set*(this: var Adaptor2dHLine2d; c: Adaptor2dLine2d) {.cdecl, importcpp: "Set",
    header: "Adaptor2d_HLine2d.hxx".}
proc curve2d*(this: Adaptor2dHLine2d): Adaptor2dCurve2d {.noSideEffect, cdecl,
    importcpp: "Curve2d", header: "Adaptor2d_HLine2d.hxx".}
proc changeCurve2d*(this: var Adaptor2dHLine2d): var Adaptor2dLine2d {.cdecl,
    importcpp: "ChangeCurve2d", header: "Adaptor2d_HLine2d.hxx".}




