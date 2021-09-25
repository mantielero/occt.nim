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

discard "forward decl of gp_XYZ"
type
  VrmlDataArrayVec3d* {.importcpp: "VrmlData_ArrayVec3d",
                       header: "VrmlData_ArrayVec3d.hxx", bycopy.} = object of VrmlDataNode ##  ---------- PUBLIC METHODS ----------
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


proc constructVrmlDataArrayVec3d*(): VrmlDataArrayVec3d {.constructor,
    importcpp: "VrmlData_ArrayVec3d(@)", header: "VrmlData_ArrayVec3d.hxx".}
proc constructVrmlDataArrayVec3d*(theScene: VrmlDataScene; theName: cstring;
                                 nVec: StandardSize; arrVec: ptr Xyz): VrmlDataArrayVec3d {.
    constructor, importcpp: "VrmlData_ArrayVec3d(@)",
    header: "VrmlData_ArrayVec3d.hxx".}
proc length*(this: VrmlDataArrayVec3d): StandardSize {.noSideEffect,
    importcpp: "Length", header: "VrmlData_ArrayVec3d.hxx".}
proc values*(this: VrmlDataArrayVec3d): ptr Xyz {.noSideEffect, importcpp: "Values",
    header: "VrmlData_ArrayVec3d.hxx".}
proc allocateValues*(this: var VrmlDataArrayVec3d; theLength: StandardSize): bool {.
    importcpp: "AllocateValues", header: "VrmlData_ArrayVec3d.hxx".}
proc setValues*(this: var VrmlDataArrayVec3d; nValues: StandardSize;
               arrValues: ptr Xyz) {.importcpp: "SetValues",
                                  header: "VrmlData_ArrayVec3d.hxx".}
proc readArray*(this: var VrmlDataArrayVec3d; theBuffer: var VrmlDataInBuffer;
               theName: cstring; isScale: bool): VrmlDataErrorStatus {.
    importcpp: "ReadArray", header: "VrmlData_ArrayVec3d.hxx".}
proc writeArray*(this: VrmlDataArrayVec3d; theName: cstring; isScale: bool): VrmlDataErrorStatus {.
    noSideEffect, importcpp: "WriteArray", header: "VrmlData_ArrayVec3d.hxx".}
proc isDefault*(this: VrmlDataArrayVec3d): bool {.noSideEffect,
    importcpp: "IsDefault", header: "VrmlData_ArrayVec3d.hxx".}
type
  VrmlDataArrayVec3dbaseType* = VrmlDataNode

proc getTypeName*(): cstring {.importcpp: "VrmlData_ArrayVec3d::get_type_name(@)",
                            header: "VrmlData_ArrayVec3d.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "VrmlData_ArrayVec3d::get_type_descriptor(@)",
    header: "VrmlData_ArrayVec3d.hxx".}
proc dynamicType*(this: VrmlDataArrayVec3d): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "VrmlData_ArrayVec3d.hxx".}
##  Definition of HANDLE object using Standard_DefineHandle.hxx

discard "forward decl of VrmlData_ArrayVec3d"
type
  HandleVrmlDataArrayVec3d* = Handle[VrmlDataArrayVec3d]

