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
##   Implementation of the Sphere node.
##

type
  VrmlDataSphere* {.importcpp: "VrmlData_Sphere", header: "VrmlData_Sphere.hxx",
                   bycopy.} = object of VrmlDataGeometry ##  ---------- PUBLIC METHODS ----------
                                                    ## *
                                                    ##  Empty constructor
                                                    ##
                                                    ##  ---------- PRIVATE FIELDS ----------
                                                    ##  Declaration of CASCADE RTTI


proc constructVrmlDataSphere*(): VrmlDataSphere {.constructor,
    importcpp: "VrmlData_Sphere(@)", header: "VrmlData_Sphere.hxx".}
proc constructVrmlDataSphere*(theScene: VrmlDataScene; theName: cstring;
                             theRadius: float = 1.0): VrmlDataSphere {.constructor,
    importcpp: "VrmlData_Sphere(@)", header: "VrmlData_Sphere.hxx".}
proc radius*(this: VrmlDataSphere): float {.noSideEffect, importcpp: "Radius",
                                        header: "VrmlData_Sphere.hxx".}
proc setRadius*(this: var VrmlDataSphere; theRadius: float) {.importcpp: "SetRadius",
    header: "VrmlData_Sphere.hxx".}
proc tShape*(this: var VrmlDataSphere): Handle[TopoDS_TShape] {.importcpp: "TShape",
    header: "VrmlData_Sphere.hxx".}
proc clone*(this: VrmlDataSphere; theOther: Handle[VrmlDataNode]): Handle[
    VrmlDataNode] {.noSideEffect, importcpp: "Clone", header: "VrmlData_Sphere.hxx".}
proc read*(this: var VrmlDataSphere; theBuffer: var VrmlDataInBuffer): VrmlDataErrorStatus {.
    importcpp: "Read", header: "VrmlData_Sphere.hxx".}
proc write*(this: VrmlDataSphere; thePrefix: cstring): VrmlDataErrorStatus {.
    noSideEffect, importcpp: "Write", header: "VrmlData_Sphere.hxx".}
type
  VrmlDataSpherebaseType* = VrmlDataGeometry

proc getTypeName*(): cstring {.importcpp: "VrmlData_Sphere::get_type_name(@)",
                            header: "VrmlData_Sphere.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "VrmlData_Sphere::get_type_descriptor(@)",
    header: "VrmlData_Sphere.hxx".}
proc dynamicType*(this: VrmlDataSphere): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "VrmlData_Sphere.hxx".}
##  Definition of HANDLE object using Standard_DefineHandle.hxx

discard "forward decl of VrmlData_Sphere"
type
  HandleVrmlDataSphere* = Handle[VrmlDataSphere]















































