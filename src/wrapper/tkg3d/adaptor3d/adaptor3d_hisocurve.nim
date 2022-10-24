import adaptor3d_types

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

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_DomainError"
discard "forward decl of Adaptor3d_IsoCurve"
discard "forward decl of Adaptor3d_Curve"
discard "forward decl of Adaptor3d_HIsoCurve"


proc newAdaptor3dHIsoCurve*(): Adaptor3dHIsoCurve {.cdecl, constructor,
    importcpp: "Adaptor3d_HIsoCurve(@)", header: "Adaptor3d_HIsoCurve.hxx".}
proc newAdaptor3dHIsoCurve*(c: Adaptor3dIsoCurve): Adaptor3dHIsoCurve {.cdecl,
    constructor, importcpp: "Adaptor3d_HIsoCurve(@)", header: "Adaptor3d_HIsoCurve.hxx".}
proc set*(this: var Adaptor3dHIsoCurve; c: Adaptor3dIsoCurve) {.cdecl,
    importcpp: "Set", header: "Adaptor3d_HIsoCurve.hxx".}
proc curve*(this: Adaptor3dHIsoCurve): Adaptor3dCurve {.noSideEffect, cdecl,
    importcpp: "Curve", header: "Adaptor3d_HIsoCurve.hxx".}
proc getCurve*(this: var Adaptor3dHIsoCurve): var Adaptor3dCurve {.cdecl,
    importcpp: "GetCurve", header: "Adaptor3d_HIsoCurve.hxx".}
proc changeCurve*(this: var Adaptor3dHIsoCurve): var Adaptor3dIsoCurve {.cdecl,
    importcpp: "ChangeCurve", header: "Adaptor3d_HIsoCurve.hxx".}


