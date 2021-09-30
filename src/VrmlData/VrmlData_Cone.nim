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
##   Implementation of the Cone node.
##   The cone is located with its middle of the height segment in (0., 0., 0.)
##   The height is oriented along OY.
##

type
  VrmlDataCone* {.importcpp: "VrmlData_Cone", header: "VrmlData_Cone.hxx", bycopy.} = object of VrmlDataGeometry ##  ---------- PUBLIC METHODS ----------
                                                                                                       ## *
                                                                                                       ##  Empty constructor
                                                                                                       ##
                                                                                                       ##  ---------- PROTECTED METHODS ----------
                                                                                                       ##  ---------- PRIVATE FIELDS ----------
                                                                                                       ##  Declaration of CASCADE RTTI


proc constructVrmlDataCone*(): VrmlDataCone {.constructor,
    importcpp: "VrmlData_Cone(@)", header: "VrmlData_Cone.hxx".}
proc constructVrmlDataCone*(theScene: VrmlDataScene; theName: cstring;
                           theBottomRadius: float = 1.0; theHeight: float = 2.0): VrmlDataCone {.
    constructor, importcpp: "VrmlData_Cone(@)", header: "VrmlData_Cone.hxx".}
proc bottomRadius*(this: VrmlDataCone): float {.noSideEffect,
    importcpp: "BottomRadius", header: "VrmlData_Cone.hxx".}
proc height*(this: VrmlDataCone): float {.noSideEffect, importcpp: "Height",
                                      header: "VrmlData_Cone.hxx".}
proc hasBottom*(this: VrmlDataCone): bool {.noSideEffect, importcpp: "HasBottom",
                                        header: "VrmlData_Cone.hxx".}
proc hasSide*(this: VrmlDataCone): bool {.noSideEffect, importcpp: "HasSide",
                                      header: "VrmlData_Cone.hxx".}
proc setBottomRadius*(this: var VrmlDataCone; theRadius: float) {.
    importcpp: "SetBottomRadius", header: "VrmlData_Cone.hxx".}
proc setHeight*(this: var VrmlDataCone; theHeight: float) {.importcpp: "SetHeight",
    header: "VrmlData_Cone.hxx".}
proc setFaces*(this: var VrmlDataCone; hasBottom: bool; hasSide: bool) {.
    importcpp: "SetFaces", header: "VrmlData_Cone.hxx".}
proc tShape*(this: var VrmlDataCone): Handle[TopoDS_TShape] {.importcpp: "TShape",
    header: "VrmlData_Cone.hxx".}
proc clone*(this: VrmlDataCone; theOther: Handle[VrmlDataNode]): Handle[VrmlDataNode] {.
    noSideEffect, importcpp: "Clone", header: "VrmlData_Cone.hxx".}
proc read*(this: var VrmlDataCone; theBuffer: var VrmlDataInBuffer): VrmlDataErrorStatus {.
    importcpp: "Read", header: "VrmlData_Cone.hxx".}
proc write*(this: VrmlDataCone; thePrefix: cstring): VrmlDataErrorStatus {.
    noSideEffect, importcpp: "Write", header: "VrmlData_Cone.hxx".}
type
  VrmlDataConebaseType* = VrmlDataGeometry

proc getTypeName*(): cstring {.importcpp: "VrmlData_Cone::get_type_name(@)",
                            header: "VrmlData_Cone.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "VrmlData_Cone::get_type_descriptor(@)",
    header: "VrmlData_Cone.hxx".}
proc dynamicType*(this: VrmlDataCone): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "VrmlData_Cone.hxx".}
##  Definition of HANDLE object using Standard_DefineHandle.hxx

discard "forward decl of VrmlData_Cone"
type
  HandleVrmlDataCone* = Handle[VrmlDataCone]















































