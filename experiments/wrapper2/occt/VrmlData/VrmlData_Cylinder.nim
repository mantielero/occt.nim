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
  VrmlData_Geometry

## *
##   Implementation of the Cylinder node
##

type
  VrmlData_Cylinder* {.importcpp: "VrmlData_Cylinder",
                      header: "VrmlData_Cylinder.hxx", bycopy.} = object of VrmlData_Geometry ##  ---------- PUBLIC METHODS ----------
                                                                                       ## *
                                                                                       ##  Empty constructor
                                                                                       ##
                                                                                       ##  ---------- PROTECTED METHODS ----------
                                                                                       ##  ---------- PRIVATE FIELDS ----------
                                                                                       ##  Declaration of CASCADE RTTI


proc constructVrmlData_Cylinder*(): VrmlData_Cylinder {.constructor,
    importcpp: "VrmlData_Cylinder(@)", header: "VrmlData_Cylinder.hxx".}
proc constructVrmlData_Cylinder*(theScene: VrmlData_Scene; theName: cstring;
                                theRadius: Standard_Real = 1.0;
                                theHeight: Standard_Real = 2.0): VrmlData_Cylinder {.
    constructor, importcpp: "VrmlData_Cylinder(@)", header: "VrmlData_Cylinder.hxx".}
proc Radius*(this: VrmlData_Cylinder): Standard_Real {.noSideEffect,
    importcpp: "Radius", header: "VrmlData_Cylinder.hxx".}
proc Height*(this: VrmlData_Cylinder): Standard_Real {.noSideEffect,
    importcpp: "Height", header: "VrmlData_Cylinder.hxx".}
proc HasBottom*(this: VrmlData_Cylinder): Standard_Boolean {.noSideEffect,
    importcpp: "HasBottom", header: "VrmlData_Cylinder.hxx".}
proc HasSide*(this: VrmlData_Cylinder): Standard_Boolean {.noSideEffect,
    importcpp: "HasSide", header: "VrmlData_Cylinder.hxx".}
proc HasTop*(this: VrmlData_Cylinder): Standard_Boolean {.noSideEffect,
    importcpp: "HasTop", header: "VrmlData_Cylinder.hxx".}
proc SetRadius*(this: var VrmlData_Cylinder; theRadius: Standard_Real) {.
    importcpp: "SetRadius", header: "VrmlData_Cylinder.hxx".}
proc SetHeight*(this: var VrmlData_Cylinder; theHeight: Standard_Real) {.
    importcpp: "SetHeight", header: "VrmlData_Cylinder.hxx".}
proc SetFaces*(this: var VrmlData_Cylinder; hasBottom: Standard_Boolean;
              hasSide: Standard_Boolean; hasTop: Standard_Boolean) {.
    importcpp: "SetFaces", header: "VrmlData_Cylinder.hxx".}
proc TShape*(this: var VrmlData_Cylinder): handle[TopoDS_TShape] {.
    importcpp: "TShape", header: "VrmlData_Cylinder.hxx".}
proc Clone*(this: VrmlData_Cylinder; theOther: handle[VrmlData_Node]): handle[
    VrmlData_Node] {.noSideEffect, importcpp: "Clone",
                    header: "VrmlData_Cylinder.hxx".}
proc Read*(this: var VrmlData_Cylinder; theBuffer: var VrmlData_InBuffer): VrmlData_ErrorStatus {.
    importcpp: "Read", header: "VrmlData_Cylinder.hxx".}
proc Write*(this: VrmlData_Cylinder; thePrefix: cstring): VrmlData_ErrorStatus {.
    noSideEffect, importcpp: "Write", header: "VrmlData_Cylinder.hxx".}
type
  VrmlData_Cylinderbase_type* = VrmlData_Geometry

proc get_type_name*(): cstring {.importcpp: "VrmlData_Cylinder::get_type_name(@)",
                              header: "VrmlData_Cylinder.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "VrmlData_Cylinder::get_type_descriptor(@)",
    header: "VrmlData_Cylinder.hxx".}
proc DynamicType*(this: VrmlData_Cylinder): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "VrmlData_Cylinder.hxx".}
##  Definition of HANDLE object using Standard_DefineHandle.hxx

discard "forward decl of VrmlData_Cylinder"
type
  Handle_VrmlData_Cylinder* = handle[VrmlData_Cylinder]
