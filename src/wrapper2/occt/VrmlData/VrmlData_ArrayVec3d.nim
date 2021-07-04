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
  VrmlData_Node

discard "forward decl of gp_XYZ"
type
  VrmlData_ArrayVec3d* {.importcpp: "VrmlData_ArrayVec3d",
                        header: "VrmlData_ArrayVec3d.hxx", bycopy.} = object of VrmlData_Node ##  ---------- PUBLIC METHODS ----------
                                                                                       ## *
                                                                                       ##  Empty constructor
                                                                                       ##
                                                                                       ##  ---------- PROTECTED METHODS ----------
                                                                                       ## *
                                                                                       ##  Query one vector
                                                                                       ##  @param i
                                                                                       ##    index in the array of vectors [0 .. N-1]
                                                                                       ##  @return
                                                                                       ##    the vector for the index. If index irrelevant, returns (0., 0., 0.)
                                                                                       ##
                                                                                       ##  ---------- PROTECTED FIELDS ----------
                                                                                       ##  Declaration of CASCADE RTTI


proc constructVrmlData_ArrayVec3d*(): VrmlData_ArrayVec3d {.constructor,
    importcpp: "VrmlData_ArrayVec3d(@)", header: "VrmlData_ArrayVec3d.hxx".}
proc constructVrmlData_ArrayVec3d*(theScene: VrmlData_Scene; theName: cstring;
                                  nVec: Standard_Size; arrVec: ptr gp_XYZ): VrmlData_ArrayVec3d {.
    constructor, importcpp: "VrmlData_ArrayVec3d(@)",
    header: "VrmlData_ArrayVec3d.hxx".}
proc Length*(this: VrmlData_ArrayVec3d): Standard_Size {.noSideEffect,
    importcpp: "Length", header: "VrmlData_ArrayVec3d.hxx".}
proc Values*(this: VrmlData_ArrayVec3d): ptr gp_XYZ {.noSideEffect,
    importcpp: "Values", header: "VrmlData_ArrayVec3d.hxx".}
proc AllocateValues*(this: var VrmlData_ArrayVec3d; theLength: Standard_Size): Standard_Boolean {.
    importcpp: "AllocateValues", header: "VrmlData_ArrayVec3d.hxx".}
proc SetValues*(this: var VrmlData_ArrayVec3d; nValues: Standard_Size;
               arrValues: ptr gp_XYZ) {.importcpp: "SetValues",
                                     header: "VrmlData_ArrayVec3d.hxx".}
proc ReadArray*(this: var VrmlData_ArrayVec3d; theBuffer: var VrmlData_InBuffer;
               theName: cstring; isScale: Standard_Boolean): VrmlData_ErrorStatus {.
    importcpp: "ReadArray", header: "VrmlData_ArrayVec3d.hxx".}
proc WriteArray*(this: VrmlData_ArrayVec3d; theName: cstring;
                isScale: Standard_Boolean): VrmlData_ErrorStatus {.noSideEffect,
    importcpp: "WriteArray", header: "VrmlData_ArrayVec3d.hxx".}
proc IsDefault*(this: VrmlData_ArrayVec3d): Standard_Boolean {.noSideEffect,
    importcpp: "IsDefault", header: "VrmlData_ArrayVec3d.hxx".}
type
  VrmlData_ArrayVec3dbase_type* = VrmlData_Node

proc get_type_name*(): cstring {.importcpp: "VrmlData_ArrayVec3d::get_type_name(@)",
                              header: "VrmlData_ArrayVec3d.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "VrmlData_ArrayVec3d::get_type_descriptor(@)",
    header: "VrmlData_ArrayVec3d.hxx".}
proc DynamicType*(this: VrmlData_ArrayVec3d): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "VrmlData_ArrayVec3d.hxx".}
##  Definition of HANDLE object using Standard_DefineHandle.hxx

discard "forward decl of VrmlData_ArrayVec3d"
type
  Handle_VrmlData_ArrayVec3d* = handle[VrmlData_ArrayVec3d]
