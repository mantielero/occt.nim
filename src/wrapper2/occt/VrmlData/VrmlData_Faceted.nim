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

import
  VrmlData_Geometry

## *
##   Common API of faceted Geometry nodes: IndexedFaceSet, ElevationGrid,
##   Extrusion.
##

type
  VrmlData_Faceted* {.importcpp: "VrmlData_Faceted",
                     header: "VrmlData_Faceted.hxx", bycopy.} = object of VrmlData_Geometry ##  ---------- PUBLIC METHODS ----------
                                                                                     ## *
                                                                                     ##  Empty constructor
                                                                                     ##
                                                                                     ##  ---------- PRIVATE FIELDS ----------
                                                                                     ##  Declaration of CASCADE RTTI


proc constructVrmlData_Faceted*(): VrmlData_Faceted {.constructor,
    importcpp: "VrmlData_Faceted(@)", header: "VrmlData_Faceted.hxx".}
proc constructVrmlData_Faceted*(theScene: VrmlData_Scene; theName: cstring;
                               isCCW: Standard_Boolean; isSolid: Standard_Boolean;
                               isConvex: Standard_Boolean;
                               theCreaseAngle: Standard_Real): VrmlData_Faceted {.
    constructor, importcpp: "VrmlData_Faceted(@)", header: "VrmlData_Faceted.hxx".}
proc IsCCW*(this: VrmlData_Faceted): Standard_Boolean {.noSideEffect,
    importcpp: "IsCCW", header: "VrmlData_Faceted.hxx".}
proc IsSolid*(this: VrmlData_Faceted): Standard_Boolean {.noSideEffect,
    importcpp: "IsSolid", header: "VrmlData_Faceted.hxx".}
proc IsConvex*(this: VrmlData_Faceted): Standard_Boolean {.noSideEffect,
    importcpp: "IsConvex", header: "VrmlData_Faceted.hxx".}
proc CreaseAngle*(this: VrmlData_Faceted): Standard_Real {.noSideEffect,
    importcpp: "CreaseAngle", header: "VrmlData_Faceted.hxx".}
proc SetCCW*(this: var VrmlData_Faceted; theValue: Standard_Boolean) {.
    importcpp: "SetCCW", header: "VrmlData_Faceted.hxx".}
proc SetSolid*(this: var VrmlData_Faceted; theValue: Standard_Boolean) {.
    importcpp: "SetSolid", header: "VrmlData_Faceted.hxx".}
proc SetConvex*(this: var VrmlData_Faceted; theValue: Standard_Boolean) {.
    importcpp: "SetConvex", header: "VrmlData_Faceted.hxx".}
proc SetCreaseAngle*(this: var VrmlData_Faceted; theValue: Standard_Real) {.
    importcpp: "SetCreaseAngle", header: "VrmlData_Faceted.hxx".}
type
  VrmlData_Facetedbase_type* = VrmlData_Geometry

proc get_type_name*(): cstring {.importcpp: "VrmlData_Faceted::get_type_name(@)",
                              header: "VrmlData_Faceted.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "VrmlData_Faceted::get_type_descriptor(@)",
    header: "VrmlData_Faceted.hxx".}
proc DynamicType*(this: VrmlData_Faceted): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "VrmlData_Faceted.hxx".}
##  Definition of HANDLE object using Standard_DefineHandle.hxx

discard "forward decl of VrmlData_Faceted"
type
  Handle_VrmlData_Faceted* = handle[VrmlData_Faceted]
