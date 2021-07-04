##  Created on: 1991-04-12
##  Created by: Michel CHAUVAT
##  Copyright (c) 1991-1999 Matra Datavision
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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Real, ../GProp/GProp_GProps

discard "forward decl of BRepGProp_Face"
discard "forward decl of gp_Pnt"
discard "forward decl of BRepGProp_Domain"
type
  BRepGProp_Sinert* {.importcpp: "BRepGProp_Sinert",
                     header: "BRepGProp_Sinert.hxx", bycopy.} = object of GProp_GProps


proc constructBRepGProp_Sinert*(): BRepGProp_Sinert {.constructor,
    importcpp: "BRepGProp_Sinert(@)", header: "BRepGProp_Sinert.hxx".}
proc constructBRepGProp_Sinert*(S: BRepGProp_Face; SLocation: gp_Pnt): BRepGProp_Sinert {.
    constructor, importcpp: "BRepGProp_Sinert(@)", header: "BRepGProp_Sinert.hxx".}
proc constructBRepGProp_Sinert*(S: var BRepGProp_Face; D: var BRepGProp_Domain;
                               SLocation: gp_Pnt): BRepGProp_Sinert {.constructor,
    importcpp: "BRepGProp_Sinert(@)", header: "BRepGProp_Sinert.hxx".}
proc constructBRepGProp_Sinert*(S: var BRepGProp_Face; SLocation: gp_Pnt;
                               Eps: Standard_Real): BRepGProp_Sinert {.constructor,
    importcpp: "BRepGProp_Sinert(@)", header: "BRepGProp_Sinert.hxx".}
proc constructBRepGProp_Sinert*(S: var BRepGProp_Face; D: var BRepGProp_Domain;
                               SLocation: gp_Pnt; Eps: Standard_Real): BRepGProp_Sinert {.
    constructor, importcpp: "BRepGProp_Sinert(@)", header: "BRepGProp_Sinert.hxx".}
proc SetLocation*(this: var BRepGProp_Sinert; SLocation: gp_Pnt) {.
    importcpp: "SetLocation", header: "BRepGProp_Sinert.hxx".}
proc Perform*(this: var BRepGProp_Sinert; S: BRepGProp_Face) {.importcpp: "Perform",
    header: "BRepGProp_Sinert.hxx".}
proc Perform*(this: var BRepGProp_Sinert; S: var BRepGProp_Face;
             D: var BRepGProp_Domain) {.importcpp: "Perform",
                                     header: "BRepGProp_Sinert.hxx".}
proc Perform*(this: var BRepGProp_Sinert; S: var BRepGProp_Face; Eps: Standard_Real): Standard_Real {.
    importcpp: "Perform", header: "BRepGProp_Sinert.hxx".}
proc Perform*(this: var BRepGProp_Sinert; S: var BRepGProp_Face;
             D: var BRepGProp_Domain; Eps: Standard_Real): Standard_Real {.
    importcpp: "Perform", header: "BRepGProp_Sinert.hxx".}
proc GetEpsilon*(this: var BRepGProp_Sinert): Standard_Real {.
    importcpp: "GetEpsilon", header: "BRepGProp_Sinert.hxx".}