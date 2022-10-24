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
discard "forward decl of BRepAdaptor_CompCurve"
discard "forward decl of Adaptor3d_Curve"
discard "forward decl of BRepAdaptor_HCompCurve"


proc newBRepAdaptorHCompCurve*(): BRepAdaptorHCompCurve {.cdecl, constructor,
    importcpp: "BRepAdaptor_HCompCurve(@)", header: "BRepAdaptor_HCompCurve.hxx".}
proc newBRepAdaptorHCompCurve*(c: BRepAdaptorCompCurve): BRepAdaptorHCompCurve {.
    cdecl, constructor, importcpp: "BRepAdaptor_HCompCurve(@)", header: "BRepAdaptor_HCompCurve.hxx".}
proc set*(this: var BRepAdaptorHCompCurve; c: BRepAdaptorCompCurve) {.cdecl,
    importcpp: "Set", header: "BRepAdaptor_HCompCurve.hxx".}
proc curve*(this: BRepAdaptorHCompCurve): Adaptor3dCurve {.noSideEffect, cdecl,
    importcpp: "Curve", header: "BRepAdaptor_HCompCurve.hxx".}
proc getCurve*(this: var BRepAdaptorHCompCurve): var Adaptor3dCurve {.cdecl,
    importcpp: "GetCurve", header: "BRepAdaptor_HCompCurve.hxx".}
proc changeCurve*(this: var BRepAdaptorHCompCurve): var BRepAdaptorCompCurve {.cdecl,
    importcpp: "ChangeCurve", header: "BRepAdaptor_HCompCurve.hxx".}


