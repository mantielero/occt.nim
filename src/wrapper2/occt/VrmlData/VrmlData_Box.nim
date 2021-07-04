##  Created on: 2006-05-25
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
  VrmlData_Geometry, ../gp/gp_XYZ

## *
##   Inplementation of the Box node.
##   This node is defined by Size vector, assumong that the box center is located
##   in (0., 0., 0.) and that each corner is 0.5*|Size| distance from the center.
##

type
  VrmlData_Box* {.importcpp: "VrmlData_Box", header: "VrmlData_Box.hxx", bycopy.} = object of VrmlData_Geometry ##  ---------- PUBLIC METHODS ----------
                                                                                                      ## *
                                                                                                      ##  Empty constructor
                                                                                                      ##
                                                                                                      ##  ---------- PRIVATE FIELDS ----------
                                                                                                      ##  Declaration of CASCADE RTTI


proc constructVrmlData_Box*(): VrmlData_Box {.constructor,
    importcpp: "VrmlData_Box(@)", header: "VrmlData_Box.hxx".}
proc constructVrmlData_Box*(theScene: VrmlData_Scene; theName: cstring;
                           sizeX: Standard_Real = 2.0; sizeY: Standard_Real = 2.0;
                           sizeZ: Standard_Real = 2.0): VrmlData_Box {.constructor,
    importcpp: "VrmlData_Box(@)", header: "VrmlData_Box.hxx".}
proc Size*(this: VrmlData_Box): gp_XYZ {.noSideEffect, importcpp: "Size",
                                     header: "VrmlData_Box.hxx".}
proc SetSize*(this: var VrmlData_Box; theSize: gp_XYZ) {.importcpp: "SetSize",
    header: "VrmlData_Box.hxx".}
proc TShape*(this: var VrmlData_Box): handle[TopoDS_TShape] {.importcpp: "TShape",
    header: "VrmlData_Box.hxx".}
proc Clone*(this: VrmlData_Box; theOther: handle[VrmlData_Node]): handle[
    VrmlData_Node] {.noSideEffect, importcpp: "Clone", header: "VrmlData_Box.hxx".}
proc Read*(this: var VrmlData_Box; theBuffer: var VrmlData_InBuffer): VrmlData_ErrorStatus {.
    importcpp: "Read", header: "VrmlData_Box.hxx".}
proc Write*(this: VrmlData_Box; thePrefix: cstring): VrmlData_ErrorStatus {.
    noSideEffect, importcpp: "Write", header: "VrmlData_Box.hxx".}
type
  VrmlData_Boxbase_type* = VrmlData_Geometry

proc get_type_name*(): cstring {.importcpp: "VrmlData_Box::get_type_name(@)",
                              header: "VrmlData_Box.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "VrmlData_Box::get_type_descriptor(@)", header: "VrmlData_Box.hxx".}
proc DynamicType*(this: VrmlData_Box): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "VrmlData_Box.hxx".}
##  Definition of HANDLE object using Standard_DefineHandle.hxx

discard "forward decl of VrmlData_Box"
type
  Handle_VrmlData_Box* = handle[VrmlData_Box]
