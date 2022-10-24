import brepadaptor_types

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

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_DomainError"
discard "forward decl of BRepAdaptor_Curve2d"
discard "forward decl of Adaptor2d_Curve2d"
discard "forward decl of BRepAdaptor_HCurve2d"


proc newBRepAdaptorHCurve2d*(): BRepAdaptorHCurve2d {.cdecl, constructor,
    importcpp: "BRepAdaptor_HCurve2d(@)", header: "BRepAdaptor_HCurve2d.hxx".}
proc newBRepAdaptorHCurve2d*(c: BRepAdaptorCurve2d): BRepAdaptorHCurve2d {.cdecl,
    constructor, importcpp: "BRepAdaptor_HCurve2d(@)", header: "BRepAdaptor_HCurve2d.hxx".}
proc set*(this: var BRepAdaptorHCurve2d; c: BRepAdaptorCurve2d) {.cdecl,
    importcpp: "Set", header: "BRepAdaptor_HCurve2d.hxx".}
proc curve2d*(this: BRepAdaptorHCurve2d): Adaptor2dCurve2d {.noSideEffect, cdecl,
    importcpp: "Curve2d", header: "BRepAdaptor_HCurve2d.hxx".}
proc changeCurve2d*(this: var BRepAdaptorHCurve2d): var BRepAdaptorCurve2d {.cdecl,
    importcpp: "ChangeCurve2d", header: "BRepAdaptor_HCurve2d.hxx".}


