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
##   Implementation of the node Coordinate
##

type
  VrmlDataCoordinate* {.importcpp: "VrmlData_Coordinate",
                       header: "VrmlData_Coordinate.hxx", bycopy.} = object of VrmlDataArrayVec3d ##  ---------- PUBLIC METHODS ----------
                                                                                           ## *
                                                                                           ##  Empty Constructor
                                                                                           ##
                                                                                           ##  ---------- PRIVATE FIELDS ----------
                                                                                           ##  Declaration of CASCADE RTTI


proc constructVrmlDataCoordinate*(): VrmlDataCoordinate {.constructor,
    importcpp: "VrmlData_Coordinate(@)", header: "VrmlData_Coordinate.hxx".}
proc constructVrmlDataCoordinate*(theScene: VrmlDataScene; theName: cstring;
                                 nPoints: csize_t = 0; arrPoints: ptr Xyz = 0'i64): VrmlDataCoordinate {.
    constructor, importcpp: "VrmlData_Coordinate(@)",
    header: "VrmlData_Coordinate.hxx".}
proc coordinate*(this: VrmlDataCoordinate; i: int): Xyz {.noSideEffect,
    importcpp: "Coordinate", header: "VrmlData_Coordinate.hxx".}
proc clone*(this: VrmlDataCoordinate; theOther: Handle[VrmlDataNode]): Handle[
    VrmlDataNode] {.noSideEffect, importcpp: "Clone",
                   header: "VrmlData_Coordinate.hxx".}
proc read*(this: var VrmlDataCoordinate; theBuffer: var VrmlDataInBuffer): VrmlDataErrorStatus {.
    importcpp: "Read", header: "VrmlData_Coordinate.hxx".}
proc write*(this: VrmlDataCoordinate; thePrefix: cstring): VrmlDataErrorStatus {.
    noSideEffect, importcpp: "Write", header: "VrmlData_Coordinate.hxx".}
type
  VrmlDataCoordinatebaseType* = VrmlDataArrayVec3d

proc getTypeName*(): cstring {.importcpp: "VrmlData_Coordinate::get_type_name(@)",
                            header: "VrmlData_Coordinate.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "VrmlData_Coordinate::get_type_descriptor(@)",
    header: "VrmlData_Coordinate.hxx".}
proc dynamicType*(this: VrmlDataCoordinate): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "VrmlData_Coordinate.hxx".}
##  Definition of HANDLE object using Standard_DefineHandle.hxx

discard "forward decl of VrmlData_Coordinate"
type
  HandleVrmlDataCoordinate* = Handle[VrmlDataCoordinate]

