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

## *
##   Implementation of the Cylinder node
##

type
  VrmlDataCylinder* {.importcpp: "VrmlData_Cylinder",
                     header: "VrmlData_Cylinder.hxx", bycopy.} = object of VrmlDataGeometry ##  ---------- PUBLIC METHODS ----------
                                                                                     ## *
                                                                                     ##  Empty constructor
                                                                                     ##
                                                                                     ##  ---------- PROTECTED METHODS ----------
                                                                                     ##  ---------- PRIVATE FIELDS ----------
                                                                                     ##  Declaration of CASCADE RTTI


proc constructVrmlDataCylinder*(): VrmlDataCylinder {.constructor,
    importcpp: "VrmlData_Cylinder(@)", header: "VrmlData_Cylinder.hxx".}
proc constructVrmlDataCylinder*(theScene: VrmlDataScene; theName: cstring;
                               theRadius: float = 1.0; theHeight: float = 2.0): VrmlDataCylinder {.
    constructor, importcpp: "VrmlData_Cylinder(@)", header: "VrmlData_Cylinder.hxx".}
proc radius*(this: VrmlDataCylinder): float {.noSideEffect, importcpp: "Radius",
    header: "VrmlData_Cylinder.hxx".}
proc height*(this: VrmlDataCylinder): float {.noSideEffect, importcpp: "Height",
    header: "VrmlData_Cylinder.hxx".}
proc hasBottom*(this: VrmlDataCylinder): bool {.noSideEffect, importcpp: "HasBottom",
    header: "VrmlData_Cylinder.hxx".}
proc hasSide*(this: VrmlDataCylinder): bool {.noSideEffect, importcpp: "HasSide",
    header: "VrmlData_Cylinder.hxx".}
proc hasTop*(this: VrmlDataCylinder): bool {.noSideEffect, importcpp: "HasTop",
    header: "VrmlData_Cylinder.hxx".}
proc setRadius*(this: var VrmlDataCylinder; theRadius: float) {.
    importcpp: "SetRadius", header: "VrmlData_Cylinder.hxx".}
proc setHeight*(this: var VrmlDataCylinder; theHeight: float) {.
    importcpp: "SetHeight", header: "VrmlData_Cylinder.hxx".}
proc setFaces*(this: var VrmlDataCylinder; hasBottom: bool; hasSide: bool; hasTop: bool) {.
    importcpp: "SetFaces", header: "VrmlData_Cylinder.hxx".}
proc tShape*(this: var VrmlDataCylinder): Handle[TopoDS_TShape] {.
    importcpp: "TShape", header: "VrmlData_Cylinder.hxx".}
proc clone*(this: VrmlDataCylinder; theOther: Handle[VrmlDataNode]): Handle[
    VrmlDataNode] {.noSideEffect, importcpp: "Clone",
                   header: "VrmlData_Cylinder.hxx".}
proc read*(this: var VrmlDataCylinder; theBuffer: var VrmlDataInBuffer): VrmlDataErrorStatus {.
    importcpp: "Read", header: "VrmlData_Cylinder.hxx".}
proc write*(this: VrmlDataCylinder; thePrefix: cstring): VrmlDataErrorStatus {.
    noSideEffect, importcpp: "Write", header: "VrmlData_Cylinder.hxx".}
type
  VrmlDataCylinderbaseType* = VrmlDataGeometry

proc getTypeName*(): cstring {.importcpp: "VrmlData_Cylinder::get_type_name(@)",
                            header: "VrmlData_Cylinder.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "VrmlData_Cylinder::get_type_descriptor(@)",
    header: "VrmlData_Cylinder.hxx".}
proc dynamicType*(this: VrmlDataCylinder): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "VrmlData_Cylinder.hxx".}
##  Definition of HANDLE object using Standard_DefineHandle.hxx

discard "forward decl of VrmlData_Cylinder"
type
  HandleVrmlDataCylinder* = Handle[VrmlDataCylinder]

