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


proc `new`*(this: var BRepGPropSinert; theSize: csize_t): pointer {.
    importcpp: "BRepGProp_Sinert::operator new", header: "BRepGProp_Sinert.hxx".}
proc `delete`*(this: var BRepGPropSinert; theAddress: pointer) {.
    importcpp: "BRepGProp_Sinert::operator delete", header: "BRepGProp_Sinert.hxx".}
proc `new[]`*(this: var BRepGPropSinert; theSize: csize_t): pointer {.
    importcpp: "BRepGProp_Sinert::operator new[]", header: "BRepGProp_Sinert.hxx".}
proc `delete[]`*(this: var BRepGPropSinert; theAddress: pointer) {.
    importcpp: "BRepGProp_Sinert::operator delete[]",
    header: "BRepGProp_Sinert.hxx".}
proc `new`*(this: var BRepGPropSinert; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRepGProp_Sinert::operator new", header: "BRepGProp_Sinert.hxx".}
proc `delete`*(this: var BRepGPropSinert; a2: pointer; a3: pointer) {.
    importcpp: "BRepGProp_Sinert::operator delete", header: "BRepGProp_Sinert.hxx".}
proc constructBRepGPropSinert*(): BRepGPropSinert {.constructor,
    importcpp: "BRepGProp_Sinert(@)", header: "BRepGProp_Sinert.hxx".}
proc constructBRepGPropSinert*(s: BRepGPropFace; sLocation: Pnt): BRepGPropSinert {.
    constructor, importcpp: "BRepGProp_Sinert(@)", header: "BRepGProp_Sinert.hxx".}
proc constructBRepGPropSinert*(s: var BRepGPropFace; d: var BRepGPropDomain;
                              sLocation: Pnt): BRepGPropSinert {.constructor,
    importcpp: "BRepGProp_Sinert(@)", header: "BRepGProp_Sinert.hxx".}
proc constructBRepGPropSinert*(s: var BRepGPropFace; sLocation: Pnt; eps: StandardReal): BRepGPropSinert {.
    constructor, importcpp: "BRepGProp_Sinert(@)", header: "BRepGProp_Sinert.hxx".}
proc constructBRepGPropSinert*(s: var BRepGPropFace; d: var BRepGPropDomain;
                              sLocation: Pnt; eps: StandardReal): BRepGPropSinert {.
    constructor, importcpp: "BRepGProp_Sinert(@)", header: "BRepGProp_Sinert.hxx".}
proc setLocation*(this: var BRepGPropSinert; sLocation: Pnt) {.
    importcpp: "SetLocation", header: "BRepGProp_Sinert.hxx".}
proc perform*(this: var BRepGPropSinert; s: BRepGPropFace) {.importcpp: "Perform",
    header: "BRepGProp_Sinert.hxx".}
proc perform*(this: var BRepGPropSinert; s: var BRepGPropFace; d: var BRepGPropDomain) {.
    importcpp: "Perform", header: "BRepGProp_Sinert.hxx".}
proc perform*(this: var BRepGPropSinert; s: var BRepGPropFace; eps: StandardReal): StandardReal {.
    importcpp: "Perform", header: "BRepGProp_Sinert.hxx".}
proc perform*(this: var BRepGPropSinert; s: var BRepGPropFace; d: var BRepGPropDomain;
             eps: StandardReal): StandardReal {.importcpp: "Perform",
    header: "BRepGProp_Sinert.hxx".}
proc getEpsilon*(this: var BRepGPropSinert): StandardReal {.importcpp: "GetEpsilon",
    header: "BRepGProp_Sinert.hxx".}