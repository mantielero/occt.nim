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
##   Implementation of the node Coordinate
##

type
  VrmlData_Coordinate* {.importcpp: "VrmlData_Coordinate",
                        header: "VrmlData_Coordinate.hxx", bycopy.} = object of VrmlData_ArrayVec3d ##  ---------- PUBLIC METHODS ----------
                                                                                             ## *
                                                                                             ##  Empty Constructor
                                                                                             ##
                                                                                             ##  ---------- PRIVATE FIELDS ----------
                                                                                             ##  Declaration of CASCADE RTTI


proc constructVrmlData_Coordinate*(): VrmlData_Coordinate {.constructor,
    importcpp: "VrmlData_Coordinate(@)", header: "VrmlData_Coordinate.hxx".}
proc constructVrmlData_Coordinate*(theScene: VrmlData_Scene; theName: cstring;
                                  nPoints: csize_t = 0;
                                  arrPoints: ptr gp_XYZ = 0L'i64): VrmlData_Coordinate {.
    constructor, importcpp: "VrmlData_Coordinate(@)",
    header: "VrmlData_Coordinate.hxx".}
proc Coordinate*(this: VrmlData_Coordinate; i: Standard_Integer): gp_XYZ {.
    noSideEffect, importcpp: "Coordinate", header: "VrmlData_Coordinate.hxx".}
proc Clone*(this: VrmlData_Coordinate; theOther: handle[VrmlData_Node]): handle[
    VrmlData_Node] {.noSideEffect, importcpp: "Clone",
                    header: "VrmlData_Coordinate.hxx".}
proc Read*(this: var VrmlData_Coordinate; theBuffer: var VrmlData_InBuffer): VrmlData_ErrorStatus {.
    importcpp: "Read", header: "VrmlData_Coordinate.hxx".}
proc Write*(this: VrmlData_Coordinate; thePrefix: cstring): VrmlData_ErrorStatus {.
    noSideEffect, importcpp: "Write", header: "VrmlData_Coordinate.hxx".}
type
  VrmlData_Coordinatebase_type* = VrmlData_ArrayVec3d

proc get_type_name*(): cstring {.importcpp: "VrmlData_Coordinate::get_type_name(@)",
                              header: "VrmlData_Coordinate.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "VrmlData_Coordinate::get_type_descriptor(@)",
    header: "VrmlData_Coordinate.hxx".}
proc DynamicType*(this: VrmlData_Coordinate): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "VrmlData_Coordinate.hxx".}
##  Definition of HANDLE object using Standard_DefineHandle.hxx

discard "forward decl of VrmlData_Coordinate"
type
  Handle_VrmlData_Coordinate* = handle[VrmlData_Coordinate]
