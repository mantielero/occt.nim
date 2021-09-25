##  Created on: 1992-11-27
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

discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Edge"
type
  BRepGPropDomain* {.importcpp: "BRepGProp_Domain", header: "BRepGProp_Domain.hxx",
                    bycopy.} = object ## ! Empty constructor.


proc constructBRepGPropDomain*(): BRepGPropDomain {.constructor,
    importcpp: "BRepGProp_Domain(@)", header: "BRepGProp_Domain.hxx".}
proc constructBRepGPropDomain*(f: TopoDS_Face): BRepGPropDomain {.constructor,
    importcpp: "BRepGProp_Domain(@)", header: "BRepGProp_Domain.hxx".}
proc init*(this: var BRepGPropDomain; f: TopoDS_Face) {.importcpp: "Init",
    header: "BRepGProp_Domain.hxx".}
proc more*(this: var BRepGPropDomain): bool {.importcpp: "More",
    header: "BRepGProp_Domain.hxx".}
proc init*(this: var BRepGPropDomain) {.importcpp: "Init",
                                    header: "BRepGProp_Domain.hxx".}
proc value*(this: var BRepGPropDomain): TopoDS_Edge {.importcpp: "Value",
    header: "BRepGProp_Domain.hxx".}
proc next*(this: var BRepGPropDomain) {.importcpp: "Next",
                                    header: "BRepGProp_Domain.hxx".}
