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
discard "forward decl of gp_Pln"
discard "forward decl of BRepGProp_Domain"
type
  BRepGPropVinert* {.importcpp: "BRepGProp_Vinert", header: "BRepGProp_Vinert.hxx",
                    bycopy.} = object of GPropGProps


proc constructBRepGPropVinert*(): BRepGPropVinert {.constructor,
    importcpp: "BRepGProp_Vinert(@)", header: "BRepGProp_Vinert.hxx".}
proc constructBRepGPropVinert*(s: BRepGPropFace; vLocation: GpPnt): BRepGPropVinert {.
    constructor, importcpp: "BRepGProp_Vinert(@)", header: "BRepGProp_Vinert.hxx".}
proc constructBRepGPropVinert*(s: var BRepGPropFace; vLocation: GpPnt;
                              eps: StandardReal): BRepGPropVinert {.constructor,
    importcpp: "BRepGProp_Vinert(@)", header: "BRepGProp_Vinert.hxx".}
proc constructBRepGPropVinert*(s: BRepGPropFace; o: GpPnt; vLocation: GpPnt): BRepGPropVinert {.
    constructor, importcpp: "BRepGProp_Vinert(@)", header: "BRepGProp_Vinert.hxx".}
proc constructBRepGPropVinert*(s: var BRepGPropFace; o: GpPnt; vLocation: GpPnt;
                              eps: StandardReal): BRepGPropVinert {.constructor,
    importcpp: "BRepGProp_Vinert(@)", header: "BRepGProp_Vinert.hxx".}
proc constructBRepGPropVinert*(s: BRepGPropFace; pl: GpPln; vLocation: GpPnt): BRepGPropVinert {.
    constructor, importcpp: "BRepGProp_Vinert(@)", header: "BRepGProp_Vinert.hxx".}
proc constructBRepGPropVinert*(s: var BRepGPropFace; pl: GpPln; vLocation: GpPnt;
                              eps: StandardReal): BRepGPropVinert {.constructor,
    importcpp: "BRepGProp_Vinert(@)", header: "BRepGProp_Vinert.hxx".}
proc constructBRepGPropVinert*(s: var BRepGPropFace; d: var BRepGPropDomain;
                              vLocation: GpPnt): BRepGPropVinert {.constructor,
    importcpp: "BRepGProp_Vinert(@)", header: "BRepGProp_Vinert.hxx".}
proc constructBRepGPropVinert*(s: var BRepGPropFace; d: var BRepGPropDomain;
                              vLocation: GpPnt; eps: StandardReal): BRepGPropVinert {.
    constructor, importcpp: "BRepGProp_Vinert(@)", header: "BRepGProp_Vinert.hxx".}
proc constructBRepGPropVinert*(s: var BRepGPropFace; d: var BRepGPropDomain; o: GpPnt;
                              vLocation: GpPnt): BRepGPropVinert {.constructor,
    importcpp: "BRepGProp_Vinert(@)", header: "BRepGProp_Vinert.hxx".}
proc constructBRepGPropVinert*(s: var BRepGPropFace; d: var BRepGPropDomain; o: GpPnt;
                              vLocation: GpPnt; eps: StandardReal): BRepGPropVinert {.
    constructor, importcpp: "BRepGProp_Vinert(@)", header: "BRepGProp_Vinert.hxx".}
proc constructBRepGPropVinert*(s: var BRepGPropFace; d: var BRepGPropDomain; pl: GpPln;
                              vLocation: GpPnt): BRepGPropVinert {.constructor,
    importcpp: "BRepGProp_Vinert(@)", header: "BRepGProp_Vinert.hxx".}
proc constructBRepGPropVinert*(s: var BRepGPropFace; d: var BRepGPropDomain; pl: GpPln;
                              vLocation: GpPnt; eps: StandardReal): BRepGPropVinert {.
    constructor, importcpp: "BRepGProp_Vinert(@)", header: "BRepGProp_Vinert.hxx".}
proc setLocation*(this: var BRepGPropVinert; vLocation: GpPnt) {.
    importcpp: "SetLocation", header: "BRepGProp_Vinert.hxx".}
proc perform*(this: var BRepGPropVinert; s: BRepGPropFace) {.importcpp: "Perform",
    header: "BRepGProp_Vinert.hxx".}
proc perform*(this: var BRepGPropVinert; s: var BRepGPropFace; eps: StandardReal): StandardReal {.
    importcpp: "Perform", header: "BRepGProp_Vinert.hxx".}
proc perform*(this: var BRepGPropVinert; s: BRepGPropFace; o: GpPnt) {.
    importcpp: "Perform", header: "BRepGProp_Vinert.hxx".}
proc perform*(this: var BRepGPropVinert; s: var BRepGPropFace; o: GpPnt;
             eps: StandardReal): StandardReal {.importcpp: "Perform",
    header: "BRepGProp_Vinert.hxx".}
proc perform*(this: var BRepGPropVinert; s: BRepGPropFace; pl: GpPln) {.
    importcpp: "Perform", header: "BRepGProp_Vinert.hxx".}
proc perform*(this: var BRepGPropVinert; s: var BRepGPropFace; pl: GpPln;
             eps: StandardReal): StandardReal {.importcpp: "Perform",
    header: "BRepGProp_Vinert.hxx".}
proc perform*(this: var BRepGPropVinert; s: var BRepGPropFace; d: var BRepGPropDomain) {.
    importcpp: "Perform", header: "BRepGProp_Vinert.hxx".}
proc perform*(this: var BRepGPropVinert; s: var BRepGPropFace; d: var BRepGPropDomain;
             eps: StandardReal): StandardReal {.importcpp: "Perform",
    header: "BRepGProp_Vinert.hxx".}
proc perform*(this: var BRepGPropVinert; s: var BRepGPropFace; d: var BRepGPropDomain;
             o: GpPnt) {.importcpp: "Perform", header: "BRepGProp_Vinert.hxx".}
proc perform*(this: var BRepGPropVinert; s: var BRepGPropFace; d: var BRepGPropDomain;
             o: GpPnt; eps: StandardReal): StandardReal {.importcpp: "Perform",
    header: "BRepGProp_Vinert.hxx".}
proc perform*(this: var BRepGPropVinert; s: var BRepGPropFace; d: var BRepGPropDomain;
             pl: GpPln) {.importcpp: "Perform", header: "BRepGProp_Vinert.hxx".}
proc perform*(this: var BRepGPropVinert; s: var BRepGPropFace; d: var BRepGPropDomain;
             pl: GpPln; eps: StandardReal): StandardReal {.importcpp: "Perform",
    header: "BRepGProp_Vinert.hxx".}
proc getEpsilon*(this: var BRepGPropVinert): StandardReal {.importcpp: "GetEpsilon",
    header: "BRepGProp_Vinert.hxx".}

