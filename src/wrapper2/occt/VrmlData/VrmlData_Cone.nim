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
##   Implementation of the Cone node.
##   The cone is located with its middle of the height segment in (0., 0., 0.)
##   The height is oriented along OY.
##

type
  VrmlData_Cone* {.importcpp: "VrmlData_Cone", header: "VrmlData_Cone.hxx", bycopy.} = object of VrmlData_Geometry ##  ---------- PUBLIC METHODS ----------
                                                                                                         ## *
                                                                                                         ##  Empty constructor
                                                                                                         ##
                                                                                                         ##  ---------- PROTECTED METHODS ----------
                                                                                                         ##  ---------- PRIVATE FIELDS ----------
                                                                                                         ##  Declaration of CASCADE RTTI


proc constructVrmlData_Cone*(): VrmlData_Cone {.constructor,
    importcpp: "VrmlData_Cone(@)", header: "VrmlData_Cone.hxx".}
proc constructVrmlData_Cone*(theScene: VrmlData_Scene; theName: cstring;
                            theBottomRadius: Standard_Real = 1.0;
                            theHeight: Standard_Real = 2.0): VrmlData_Cone {.
    constructor, importcpp: "VrmlData_Cone(@)", header: "VrmlData_Cone.hxx".}
proc BottomRadius*(this: VrmlData_Cone): Standard_Real {.noSideEffect,
    importcpp: "BottomRadius", header: "VrmlData_Cone.hxx".}
proc Height*(this: VrmlData_Cone): Standard_Real {.noSideEffect, importcpp: "Height",
    header: "VrmlData_Cone.hxx".}
proc HasBottom*(this: VrmlData_Cone): Standard_Boolean {.noSideEffect,
    importcpp: "HasBottom", header: "VrmlData_Cone.hxx".}
proc HasSide*(this: VrmlData_Cone): Standard_Boolean {.noSideEffect,
    importcpp: "HasSide", header: "VrmlData_Cone.hxx".}
proc SetBottomRadius*(this: var VrmlData_Cone; theRadius: Standard_Real) {.
    importcpp: "SetBottomRadius", header: "VrmlData_Cone.hxx".}
proc SetHeight*(this: var VrmlData_Cone; theHeight: Standard_Real) {.
    importcpp: "SetHeight", header: "VrmlData_Cone.hxx".}
proc SetFaces*(this: var VrmlData_Cone; hasBottom: Standard_Boolean;
              hasSide: Standard_Boolean) {.importcpp: "SetFaces",
    header: "VrmlData_Cone.hxx".}
proc TShape*(this: var VrmlData_Cone): handle[TopoDS_TShape] {.importcpp: "TShape",
    header: "VrmlData_Cone.hxx".}
proc Clone*(this: VrmlData_Cone; theOther: handle[VrmlData_Node]): handle[
    VrmlData_Node] {.noSideEffect, importcpp: "Clone", header: "VrmlData_Cone.hxx".}
proc Read*(this: var VrmlData_Cone; theBuffer: var VrmlData_InBuffer): VrmlData_ErrorStatus {.
    importcpp: "Read", header: "VrmlData_Cone.hxx".}
proc Write*(this: VrmlData_Cone; thePrefix: cstring): VrmlData_ErrorStatus {.
    noSideEffect, importcpp: "Write", header: "VrmlData_Cone.hxx".}
type
  VrmlData_Conebase_type* = VrmlData_Geometry

proc get_type_name*(): cstring {.importcpp: "VrmlData_Cone::get_type_name(@)",
                              header: "VrmlData_Cone.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "VrmlData_Cone::get_type_descriptor(@)",
    header: "VrmlData_Cone.hxx".}
proc DynamicType*(this: VrmlData_Cone): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "VrmlData_Cone.hxx".}
##  Definition of HANDLE object using Standard_DefineHandle.hxx

discard "forward decl of VrmlData_Cone"
type
  Handle_VrmlData_Cone* = handle[VrmlData_Cone]
