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

discard "forward decl of BRepGProp_Face"
discard "forward decl of gp_Pnt"
discard "forward decl of BRepGProp_Domain"
type
  BRepGPropSinert* {.importcpp: "BRepGProp_Sinert", header: "BRepGProp_Sinert.hxx",
                    bycopy.} = object of GPropGProps


proc constructBRepGPropSinert*(): BRepGPropSinert {.constructor,
    importcpp: "BRepGProp_Sinert(@)", header: "BRepGProp_Sinert.hxx".}
proc constructBRepGPropSinert*(s: BRepGPropFace; sLocation: Pnt): BRepGPropSinert {.
    constructor, importcpp: "BRepGProp_Sinert(@)", header: "BRepGProp_Sinert.hxx".}
proc constructBRepGPropSinert*(s: var BRepGPropFace; d: var BRepGPropDomain;
                              sLocation: Pnt): BRepGPropSinert {.constructor,
    importcpp: "BRepGProp_Sinert(@)", header: "BRepGProp_Sinert.hxx".}
proc constructBRepGPropSinert*(s: var BRepGPropFace; sLocation: Pnt; eps: cfloat): BRepGPropSinert {.
    constructor, importcpp: "BRepGProp_Sinert(@)", header: "BRepGProp_Sinert.hxx".}
proc constructBRepGPropSinert*(s: var BRepGPropFace; d: var BRepGPropDomain;
                              sLocation: Pnt; eps: cfloat): BRepGPropSinert {.
    constructor, importcpp: "BRepGProp_Sinert(@)", header: "BRepGProp_Sinert.hxx".}
proc setLocation*(this: var BRepGPropSinert; sLocation: Pnt) {.
    importcpp: "SetLocation", header: "BRepGProp_Sinert.hxx".}
proc perform*(this: var BRepGPropSinert; s: BRepGPropFace) {.importcpp: "Perform",
    header: "BRepGProp_Sinert.hxx".}
proc perform*(this: var BRepGPropSinert; s: var BRepGPropFace; d: var BRepGPropDomain) {.
    importcpp: "Perform", header: "BRepGProp_Sinert.hxx".}
proc perform*(this: var BRepGPropSinert; s: var BRepGPropFace; eps: cfloat): cfloat {.
    importcpp: "Perform", header: "BRepGProp_Sinert.hxx".}
proc perform*(this: var BRepGPropSinert; s: var BRepGPropFace; d: var BRepGPropDomain;
             eps: cfloat): cfloat {.importcpp: "Perform",
                                 header: "BRepGProp_Sinert.hxx".}
proc getEpsilon*(this: var BRepGPropSinert): cfloat {.importcpp: "GetEpsilon",
    header: "BRepGProp_Sinert.hxx".}

























