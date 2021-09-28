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

## *
##   Implementation of the node Color
##

type
  VrmlDataColor* {.importcpp: "VrmlData_Color", header: "VrmlData_Color.hxx", bycopy.} = object of VrmlDataArrayVec3d ##  ---------- PUBLIC METHODS ----------
                                                                                                            ## *
                                                                                                            ##  Empty constructor.
                                                                                                            ##
                                                                                                            ##  ---------- PRIVATE FIELDS ----------
                                                                                                            ##  Declaration of CASCADE RTTI


proc constructVrmlDataColor*(): VrmlDataColor {.constructor,
    importcpp: "VrmlData_Color(@)", header: "VrmlData_Color.hxx".}
proc constructVrmlDataColor*(theScene: VrmlDataScene; theName: cstring;
                            nColors: csize_t = 0; arrColors: ptr Xyz = 0'i64): VrmlDataColor {.
    constructor, importcpp: "VrmlData_Color(@)", header: "VrmlData_Color.hxx".}
proc color*(this: VrmlDataColor; i: int): QuantityColor {.noSideEffect,
    importcpp: "Color", header: "VrmlData_Color.hxx".}
proc setColors*(this: var VrmlDataColor; nColors: csize_t; arrColors: ptr Xyz) {.
    importcpp: "SetColors", header: "VrmlData_Color.hxx".}
proc clone*(this: VrmlDataColor; theOther: Handle[VrmlDataNode]): Handle[VrmlDataNode] {.
    noSideEffect, importcpp: "Clone", header: "VrmlData_Color.hxx".}
proc read*(this: var VrmlDataColor; theBuffer: var VrmlDataInBuffer): VrmlDataErrorStatus {.
    importcpp: "Read", header: "VrmlData_Color.hxx".}
proc write*(this: VrmlDataColor; thePrefix: cstring): VrmlDataErrorStatus {.
    noSideEffect, importcpp: "Write", header: "VrmlData_Color.hxx".}
type
  VrmlDataColorbaseType* = VrmlDataArrayVec3d

proc getTypeName*(): cstring {.importcpp: "VrmlData_Color::get_type_name(@)",
                            header: "VrmlData_Color.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "VrmlData_Color::get_type_descriptor(@)",
    header: "VrmlData_Color.hxx".}
proc dynamicType*(this: VrmlDataColor): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "VrmlData_Color.hxx".}
##  Definition of HANDLE object using Standard_DefineHandle.hxx

discard "forward decl of VrmlData_Color"
type
  HandleVrmlDataColor* = Handle[VrmlDataColor]















































