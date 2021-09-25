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
##   Implementation of the node Normal
##

type
  VrmlDataNormal* {.importcpp: "VrmlData_Normal", header: "VrmlData_Normal.hxx",
                   bycopy.} = object of VrmlDataArrayVec3d ##  ---------- PUBLIC METHODS ----------
                                                      ## *
                                                      ##  Empty constructor
                                                      ##
                                                      ##  ---------- PRIVATE FIELDS ----------
                                                      ##  Declaration of CASCADE RTTI


proc constructVrmlDataNormal*(): VrmlDataNormal {.constructor,
    importcpp: "VrmlData_Normal(@)", header: "VrmlData_Normal.hxx".}
proc constructVrmlDataNormal*(theScene: VrmlDataScene; theName: cstring;
                             nVec: csize_t = 0; arrVec: ptr Xyz = 0'i64): VrmlDataNormal {.
    constructor, importcpp: "VrmlData_Normal(@)", header: "VrmlData_Normal.hxx".}
proc normal*(this: VrmlDataNormal; i: int): Xyz {.noSideEffect, importcpp: "Normal",
    header: "VrmlData_Normal.hxx".}
proc clone*(this: VrmlDataNormal; theOther: Handle[VrmlDataNode]): Handle[
    VrmlDataNode] {.noSideEffect, importcpp: "Clone", header: "VrmlData_Normal.hxx".}
proc read*(this: var VrmlDataNormal; theBuffer: var VrmlDataInBuffer): VrmlDataErrorStatus {.
    importcpp: "Read", header: "VrmlData_Normal.hxx".}
proc write*(this: VrmlDataNormal; thePrefix: cstring): VrmlDataErrorStatus {.
    noSideEffect, importcpp: "Write", header: "VrmlData_Normal.hxx".}
type
  VrmlDataNormalbaseType* = VrmlDataArrayVec3d

proc getTypeName*(): cstring {.importcpp: "VrmlData_Normal::get_type_name(@)",
                            header: "VrmlData_Normal.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "VrmlData_Normal::get_type_descriptor(@)",
    header: "VrmlData_Normal.hxx".}
proc dynamicType*(this: VrmlDataNormal): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "VrmlData_Normal.hxx".}
##  Definition of HANDLE object using Standard_DefineHandle.hxx

discard "forward decl of VrmlData_Normal"
type
  HandleVrmlDataNormal* = Handle[VrmlDataNormal]

