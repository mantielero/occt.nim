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
##   Inplementation of the Box node.
##   This node is defined by Size vector, assumong that the box center is located
##   in (0., 0., 0.) and that each corner is 0.5*|Size| distance from the center.
##

type
  VrmlDataBox* {.importcpp: "VrmlData_Box", header: "VrmlData_Box.hxx", bycopy.} = object of VrmlDataGeometry ##  ---------- PUBLIC METHODS ----------
                                                                                                    ## *
                                                                                                    ##  Empty constructor
                                                                                                    ##
                                                                                                    ##  ---------- PRIVATE FIELDS ----------
                                                                                                    ##  Declaration of CASCADE RTTI


proc constructVrmlDataBox*(): VrmlDataBox {.constructor,
    importcpp: "VrmlData_Box(@)", header: "VrmlData_Box.hxx".}
proc constructVrmlDataBox*(theScene: VrmlDataScene; theName: cstring;
                          sizeX: float = 2.0; sizeY: float = 2.0; sizeZ: float = 2.0): VrmlDataBox {.
    constructor, importcpp: "VrmlData_Box(@)", header: "VrmlData_Box.hxx".}
proc size*(this: VrmlDataBox): Xyz {.noSideEffect, importcpp: "Size",
                                 header: "VrmlData_Box.hxx".}
proc setSize*(this: var VrmlDataBox; theSize: Xyz) {.importcpp: "SetSize",
    header: "VrmlData_Box.hxx".}
proc tShape*(this: var VrmlDataBox): Handle[TopoDS_TShape] {.importcpp: "TShape",
    header: "VrmlData_Box.hxx".}
proc clone*(this: VrmlDataBox; theOther: Handle[VrmlDataNode]): Handle[VrmlDataNode] {.
    noSideEffect, importcpp: "Clone", header: "VrmlData_Box.hxx".}
proc read*(this: var VrmlDataBox; theBuffer: var VrmlDataInBuffer): VrmlDataErrorStatus {.
    importcpp: "Read", header: "VrmlData_Box.hxx".}
proc write*(this: VrmlDataBox; thePrefix: cstring): VrmlDataErrorStatus {.
    noSideEffect, importcpp: "Write", header: "VrmlData_Box.hxx".}
type
  VrmlDataBoxbaseType* = VrmlDataGeometry

proc getTypeName*(): cstring {.importcpp: "VrmlData_Box::get_type_name(@)",
                            header: "VrmlData_Box.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "VrmlData_Box::get_type_descriptor(@)", header: "VrmlData_Box.hxx".}
proc dynamicType*(this: VrmlDataBox): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "VrmlData_Box.hxx".}
##  Definition of HANDLE object using Standard_DefineHandle.hxx

discard "forward decl of VrmlData_Box"
type
  HandleVrmlDataBox* = Handle[VrmlDataBox]















































