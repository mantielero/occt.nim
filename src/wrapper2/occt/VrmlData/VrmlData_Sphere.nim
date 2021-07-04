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
  VrmlData_Geometry

## *
##   Implementation of the Sphere node.
##

type
  VrmlData_Sphere* {.importcpp: "VrmlData_Sphere", header: "VrmlData_Sphere.hxx",
                    bycopy.} = object of VrmlData_Geometry ##  ---------- PUBLIC METHODS ----------
                                                      ## *
                                                      ##  Empty constructor
                                                      ##
                                                      ##  ---------- PRIVATE FIELDS ----------
                                                      ##  Declaration of CASCADE RTTI


proc constructVrmlData_Sphere*(): VrmlData_Sphere {.constructor,
    importcpp: "VrmlData_Sphere(@)", header: "VrmlData_Sphere.hxx".}
proc constructVrmlData_Sphere*(theScene: VrmlData_Scene; theName: cstring;
                              theRadius: Standard_Real = 1.0): VrmlData_Sphere {.
    constructor, importcpp: "VrmlData_Sphere(@)", header: "VrmlData_Sphere.hxx".}
proc Radius*(this: VrmlData_Sphere): Standard_Real {.noSideEffect,
    importcpp: "Radius", header: "VrmlData_Sphere.hxx".}
proc SetRadius*(this: var VrmlData_Sphere; theRadius: Standard_Real) {.
    importcpp: "SetRadius", header: "VrmlData_Sphere.hxx".}
proc TShape*(this: var VrmlData_Sphere): handle[TopoDS_TShape] {.importcpp: "TShape",
    header: "VrmlData_Sphere.hxx".}
proc Clone*(this: VrmlData_Sphere; theOther: handle[VrmlData_Node]): handle[
    VrmlData_Node] {.noSideEffect, importcpp: "Clone", header: "VrmlData_Sphere.hxx".}
proc Read*(this: var VrmlData_Sphere; theBuffer: var VrmlData_InBuffer): VrmlData_ErrorStatus {.
    importcpp: "Read", header: "VrmlData_Sphere.hxx".}
proc Write*(this: VrmlData_Sphere; thePrefix: cstring): VrmlData_ErrorStatus {.
    noSideEffect, importcpp: "Write", header: "VrmlData_Sphere.hxx".}
type
  VrmlData_Spherebase_type* = VrmlData_Geometry

proc get_type_name*(): cstring {.importcpp: "VrmlData_Sphere::get_type_name(@)",
                              header: "VrmlData_Sphere.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "VrmlData_Sphere::get_type_descriptor(@)",
    header: "VrmlData_Sphere.hxx".}
proc DynamicType*(this: VrmlData_Sphere): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "VrmlData_Sphere.hxx".}
##  Definition of HANDLE object using Standard_DefineHandle.hxx

discard "forward decl of VrmlData_Sphere"
type
  Handle_VrmlData_Sphere* = handle[VrmlData_Sphere]
