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


proc `new`*(this: var BRepGPropVinert; theSize: csize_t): pointer {.
    importcpp: "BRepGProp_Vinert::operator new", header: "BRepGProp_Vinert.hxx".}
proc `delete`*(this: var BRepGPropVinert; theAddress: pointer) {.
    importcpp: "BRepGProp_Vinert::operator delete", header: "BRepGProp_Vinert.hxx".}
proc `new[]`*(this: var BRepGPropVinert; theSize: csize_t): pointer {.
    importcpp: "BRepGProp_Vinert::operator new[]", header: "BRepGProp_Vinert.hxx".}
proc `delete[]`*(this: var BRepGPropVinert; theAddress: pointer) {.
    importcpp: "BRepGProp_Vinert::operator delete[]",
    header: "BRepGProp_Vinert.hxx".}
proc `new`*(this: var BRepGPropVinert; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRepGProp_Vinert::operator new", header: "BRepGProp_Vinert.hxx".}
proc `delete`*(this: var BRepGPropVinert; a2: pointer; a3: pointer) {.
    importcpp: "BRepGProp_Vinert::operator delete", header: "BRepGProp_Vinert.hxx".}
proc constructBRepGPropVinert*(): BRepGPropVinert {.constructor,
    importcpp: "BRepGProp_Vinert(@)", header: "BRepGProp_Vinert.hxx".}
proc constructBRepGPropVinert*(s: BRepGPropFace; vLocation: Pnt): BRepGPropVinert {.
    constructor, importcpp: "BRepGProp_Vinert(@)", header: "BRepGProp_Vinert.hxx".}
proc constructBRepGPropVinert*(s: var BRepGPropFace; vLocation: Pnt; eps: StandardReal): BRepGPropVinert {.
    constructor, importcpp: "BRepGProp_Vinert(@)", header: "BRepGProp_Vinert.hxx".}
proc constructBRepGPropVinert*(s: BRepGPropFace; o: Pnt; vLocation: Pnt): BRepGPropVinert {.
    constructor, importcpp: "BRepGProp_Vinert(@)", header: "BRepGProp_Vinert.hxx".}
proc constructBRepGPropVinert*(s: var BRepGPropFace; o: Pnt; vLocation: Pnt;
                              eps: StandardReal): BRepGPropVinert {.constructor,
    importcpp: "BRepGProp_Vinert(@)", header: "BRepGProp_Vinert.hxx".}
proc constructBRepGPropVinert*(s: BRepGPropFace; pl: Pln; vLocation: Pnt): BRepGPropVinert {.
    constructor, importcpp: "BRepGProp_Vinert(@)", header: "BRepGProp_Vinert.hxx".}
proc constructBRepGPropVinert*(s: var BRepGPropFace; pl: Pln; vLocation: Pnt;
                              eps: StandardReal): BRepGPropVinert {.constructor,
    importcpp: "BRepGProp_Vinert(@)", header: "BRepGProp_Vinert.hxx".}
proc constructBRepGPropVinert*(s: var BRepGPropFace; d: var BRepGPropDomain;
                              vLocation: Pnt): BRepGPropVinert {.constructor,
    importcpp: "BRepGProp_Vinert(@)", header: "BRepGProp_Vinert.hxx".}
proc constructBRepGPropVinert*(s: var BRepGPropFace; d: var BRepGPropDomain;
                              vLocation: Pnt; eps: StandardReal): BRepGPropVinert {.
    constructor, importcpp: "BRepGProp_Vinert(@)", header: "BRepGProp_Vinert.hxx".}
proc constructBRepGPropVinert*(s: var BRepGPropFace; d: var BRepGPropDomain; o: Pnt;
                              vLocation: Pnt): BRepGPropVinert {.constructor,
    importcpp: "BRepGProp_Vinert(@)", header: "BRepGProp_Vinert.hxx".}
proc constructBRepGPropVinert*(s: var BRepGPropFace; d: var BRepGPropDomain; o: Pnt;
                              vLocation: Pnt; eps: StandardReal): BRepGPropVinert {.
    constructor, importcpp: "BRepGProp_Vinert(@)", header: "BRepGProp_Vinert.hxx".}
proc constructBRepGPropVinert*(s: var BRepGPropFace; d: var BRepGPropDomain; pl: Pln;
                              vLocation: Pnt): BRepGPropVinert {.constructor,
    importcpp: "BRepGProp_Vinert(@)", header: "BRepGProp_Vinert.hxx".}
proc constructBRepGPropVinert*(s: var BRepGPropFace; d: var BRepGPropDomain; pl: Pln;
                              vLocation: Pnt; eps: StandardReal): BRepGPropVinert {.
    constructor, importcpp: "BRepGProp_Vinert(@)", header: "BRepGProp_Vinert.hxx".}
proc setLocation*(this: var BRepGPropVinert; vLocation: Pnt) {.
    importcpp: "SetLocation", header: "BRepGProp_Vinert.hxx".}
proc perform*(this: var BRepGPropVinert; s: BRepGPropFace) {.importcpp: "Perform",
    header: "BRepGProp_Vinert.hxx".}
proc perform*(this: var BRepGPropVinert; s: var BRepGPropFace; eps: StandardReal): StandardReal {.
    importcpp: "Perform", header: "BRepGProp_Vinert.hxx".}
proc perform*(this: var BRepGPropVinert; s: BRepGPropFace; o: Pnt) {.
    importcpp: "Perform", header: "BRepGProp_Vinert.hxx".}
proc perform*(this: var BRepGPropVinert; s: var BRepGPropFace; o: Pnt; eps: StandardReal): StandardReal {.
    importcpp: "Perform", header: "BRepGProp_Vinert.hxx".}
proc perform*(this: var BRepGPropVinert; s: BRepGPropFace; pl: Pln) {.
    importcpp: "Perform", header: "BRepGProp_Vinert.hxx".}
proc perform*(this: var BRepGPropVinert; s: var BRepGPropFace; pl: Pln; eps: StandardReal): StandardReal {.
    importcpp: "Perform", header: "BRepGProp_Vinert.hxx".}
proc perform*(this: var BRepGPropVinert; s: var BRepGPropFace; d: var BRepGPropDomain) {.
    importcpp: "Perform", header: "BRepGProp_Vinert.hxx".}
proc perform*(this: var BRepGPropVinert; s: var BRepGPropFace; d: var BRepGPropDomain;
             eps: StandardReal): StandardReal {.importcpp: "Perform",
    header: "BRepGProp_Vinert.hxx".}
proc perform*(this: var BRepGPropVinert; s: var BRepGPropFace; d: var BRepGPropDomain;
             o: Pnt) {.importcpp: "Perform", header: "BRepGProp_Vinert.hxx".}
proc perform*(this: var BRepGPropVinert; s: var BRepGPropFace; d: var BRepGPropDomain;
             o: Pnt; eps: StandardReal): StandardReal {.importcpp: "Perform",
    header: "BRepGProp_Vinert.hxx".}
proc perform*(this: var BRepGPropVinert; s: var BRepGPropFace; d: var BRepGPropDomain;
             pl: Pln) {.importcpp: "Perform", header: "BRepGProp_Vinert.hxx".}
proc perform*(this: var BRepGPropVinert; s: var BRepGPropFace; d: var BRepGPropDomain;
             pl: Pln; eps: StandardReal): StandardReal {.importcpp: "Perform",
    header: "BRepGProp_Vinert.hxx".}
proc getEpsilon*(this: var BRepGPropVinert): StandardReal {.importcpp: "GetEpsilon",
    header: "BRepGProp_Vinert.hxx".}