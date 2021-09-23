##  Created on: 2006-05-28
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
  VrmlData_ArrayVec3d, ../Quantity/Quantity_Color, ../gp/gp_XYZ

## *
##   Implementation of the node Color
##

type
  VrmlData_Color* {.importcpp: "VrmlData_Color", header: "VrmlData_Color.hxx", bycopy.} = object of VrmlData_ArrayVec3d ##  ---------- PUBLIC METHODS ----------
                                                                                                              ## *
                                                                                                              ##  Empty constructor.
                                                                                                              ##
                                                                                                              ##  ---------- PRIVATE FIELDS ----------
                                                                                                              ##  Declaration of CASCADE RTTI


proc constructVrmlData_Color*(): VrmlData_Color {.constructor,
    importcpp: "VrmlData_Color(@)", header: "VrmlData_Color.hxx".}
proc constructVrmlData_Color*(theScene: VrmlData_Scene; theName: cstring;
                             nColors: csize_t = 0; arrColors: ptr gp_XYZ = 0L'i64): VrmlData_Color {.
    constructor, importcpp: "VrmlData_Color(@)", header: "VrmlData_Color.hxx".}
proc Color*(this: VrmlData_Color; i: Standard_Integer): Quantity_Color {.noSideEffect,
    importcpp: "Color", header: "VrmlData_Color.hxx".}
proc SetColors*(this: var VrmlData_Color; nColors: csize_t; arrColors: ptr gp_XYZ) {.
    importcpp: "SetColors", header: "VrmlData_Color.hxx".}
proc Clone*(this: VrmlData_Color; theOther: handle[VrmlData_Node]): handle[
    VrmlData_Node] {.noSideEffect, importcpp: "Clone", header: "VrmlData_Color.hxx".}
proc Read*(this: var VrmlData_Color; theBuffer: var VrmlData_InBuffer): VrmlData_ErrorStatus {.
    importcpp: "Read", header: "VrmlData_Color.hxx".}
proc Write*(this: VrmlData_Color; thePrefix: cstring): VrmlData_ErrorStatus {.
    noSideEffect, importcpp: "Write", header: "VrmlData_Color.hxx".}
type
  VrmlData_Colorbase_type* = VrmlData_ArrayVec3d

proc get_type_name*(): cstring {.importcpp: "VrmlData_Color::get_type_name(@)",
                              header: "VrmlData_Color.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "VrmlData_Color::get_type_descriptor(@)",
    header: "VrmlData_Color.hxx".}
proc DynamicType*(this: VrmlData_Color): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "VrmlData_Color.hxx".}
##  Definition of HANDLE object using Standard_DefineHandle.hxx

discard "forward decl of VrmlData_Color"
type
  Handle_VrmlData_Color* = handle[VrmlData_Color]
