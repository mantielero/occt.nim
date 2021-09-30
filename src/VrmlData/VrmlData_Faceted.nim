##  Created on: 2006-05-26
##  Created by: Alexander GRIGORIEV
##  Copyright (c) 2006-2014 OPEN CASCADE SAS
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

## *
##   Common API of faceted Geometry nodes: IndexedFaceSet, ElevationGrid,
##   Extrusion.
##

type
  VrmlDataFaceted* {.importcpp: "VrmlData_Faceted", header: "VrmlData_Faceted.hxx",
                    bycopy.} = object of VrmlDataGeometry ##  ---------- PUBLIC METHODS ----------
                                                     ## *
                                                     ##  Empty constructor
                                                     ##
                                                     ##  ---------- PRIVATE FIELDS ----------
                                                     ##  Declaration of CASCADE RTTI


proc constructVrmlDataFaceted*(): VrmlDataFaceted {.constructor,
    importcpp: "VrmlData_Faceted(@)", header: "VrmlData_Faceted.hxx".}
proc constructVrmlDataFaceted*(theScene: VrmlDataScene; theName: cstring;
                              isCCW: bool; isSolid: bool; isConvex: bool;
                              theCreaseAngle: float): VrmlDataFaceted {.
    constructor, importcpp: "VrmlData_Faceted(@)", header: "VrmlData_Faceted.hxx".}
proc isCCW*(this: VrmlDataFaceted): bool {.noSideEffect, importcpp: "IsCCW",
                                       header: "VrmlData_Faceted.hxx".}
proc isSolid*(this: VrmlDataFaceted): bool {.noSideEffect, importcpp: "IsSolid",
    header: "VrmlData_Faceted.hxx".}
proc isConvex*(this: VrmlDataFaceted): bool {.noSideEffect, importcpp: "IsConvex",
    header: "VrmlData_Faceted.hxx".}
proc creaseAngle*(this: VrmlDataFaceted): float {.noSideEffect,
    importcpp: "CreaseAngle", header: "VrmlData_Faceted.hxx".}
proc setCCW*(this: var VrmlDataFaceted; theValue: bool) {.importcpp: "SetCCW",
    header: "VrmlData_Faceted.hxx".}
proc setSolid*(this: var VrmlDataFaceted; theValue: bool) {.importcpp: "SetSolid",
    header: "VrmlData_Faceted.hxx".}
proc setConvex*(this: var VrmlDataFaceted; theValue: bool) {.importcpp: "SetConvex",
    header: "VrmlData_Faceted.hxx".}
proc setCreaseAngle*(this: var VrmlDataFaceted; theValue: float) {.
    importcpp: "SetCreaseAngle", header: "VrmlData_Faceted.hxx".}
type
  VrmlDataFacetedbaseType* = VrmlDataGeometry

proc getTypeName*(): cstring {.importcpp: "VrmlData_Faceted::get_type_name(@)",
                            header: "VrmlData_Faceted.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "VrmlData_Faceted::get_type_descriptor(@)",
    header: "VrmlData_Faceted.hxx".}
proc dynamicType*(this: VrmlDataFaceted): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "VrmlData_Faceted.hxx".}
##  Definition of HANDLE object using Standard_DefineHandle.hxx

discard "forward decl of VrmlData_Faceted"
type
  HandleVrmlDataFaceted* = Handle[VrmlDataFaceted]















































