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
  VrmlData_ArrayVec3d

## *
##   Implementation of the node Normal
##

type
  VrmlData_Normal* {.importcpp: "VrmlData_Normal", header: "VrmlData_Normal.hxx",
                    bycopy.} = object of VrmlData_ArrayVec3d ##  ---------- PUBLIC METHODS ----------
                                                        ## *
                                                        ##  Empty constructor
                                                        ##
                                                        ##  ---------- PRIVATE FIELDS ----------
                                                        ##  Declaration of CASCADE RTTI


proc constructVrmlData_Normal*(): VrmlData_Normal {.constructor,
    importcpp: "VrmlData_Normal(@)", header: "VrmlData_Normal.hxx".}
proc constructVrmlData_Normal*(theScene: VrmlData_Scene; theName: cstring;
                              nVec: csize_t = 0; arrVec: ptr gp_XYZ = 0L'i64): VrmlData_Normal {.
    constructor, importcpp: "VrmlData_Normal(@)", header: "VrmlData_Normal.hxx".}
proc Normal*(this: VrmlData_Normal; i: Standard_Integer): gp_XYZ {.noSideEffect,
    importcpp: "Normal", header: "VrmlData_Normal.hxx".}
proc Clone*(this: VrmlData_Normal; theOther: handle[VrmlData_Node]): handle[
    VrmlData_Node] {.noSideEffect, importcpp: "Clone", header: "VrmlData_Normal.hxx".}
proc Read*(this: var VrmlData_Normal; theBuffer: var VrmlData_InBuffer): VrmlData_ErrorStatus {.
    importcpp: "Read", header: "VrmlData_Normal.hxx".}
proc Write*(this: VrmlData_Normal; thePrefix: cstring): VrmlData_ErrorStatus {.
    noSideEffect, importcpp: "Write", header: "VrmlData_Normal.hxx".}
type
  VrmlData_Normalbase_type* = VrmlData_ArrayVec3d

proc get_type_name*(): cstring {.importcpp: "VrmlData_Normal::get_type_name(@)",
                              header: "VrmlData_Normal.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "VrmlData_Normal::get_type_descriptor(@)",
    header: "VrmlData_Normal.hxx".}
proc DynamicType*(this: VrmlData_Normal): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "VrmlData_Normal.hxx".}
##  Definition of HANDLE object using Standard_DefineHandle.hxx

discard "forward decl of VrmlData_Normal"
type
  Handle_VrmlData_Normal* = handle[VrmlData_Normal]
