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
  VrmlData_Node

discard "forward decl of gp_XY"
type
  VrmlData_TextureCoordinate* {.importcpp: "VrmlData_TextureCoordinate",
                               header: "VrmlData_TextureCoordinate.hxx", bycopy.} = object of VrmlData_Node ##  ---------- PUBLIC METHODS ----------
                                                                                                     ## *
                                                                                                     ##  Empty constructor
                                                                                                     ##
                                                                                                     ##  ---------- PRIVATE FIELDS ----------
                                                                                                     ##  Declaration of CASCADE RTTI


proc constructVrmlData_TextureCoordinate*(): VrmlData_TextureCoordinate {.
    constructor, importcpp: "VrmlData_TextureCoordinate(@)",
    header: "VrmlData_TextureCoordinate.hxx".}
proc constructVrmlData_TextureCoordinate*(theScene: VrmlData_Scene;
    theName: cstring; nPoints: csize_t = 0; arrPoints: ptr gp_XY = 0L'i64): VrmlData_TextureCoordinate {.
    constructor, importcpp: "VrmlData_TextureCoordinate(@)",
    header: "VrmlData_TextureCoordinate.hxx".}
proc AllocateValues*(this: var VrmlData_TextureCoordinate; theLength: Standard_Size): Standard_Boolean {.
    importcpp: "AllocateValues", header: "VrmlData_TextureCoordinate.hxx".}
proc Length*(this: var VrmlData_TextureCoordinate): csize_t {.importcpp: "Length",
    header: "VrmlData_TextureCoordinate.hxx".}
proc Points*(this: var VrmlData_TextureCoordinate): ptr gp_XY {.importcpp: "Points",
    header: "VrmlData_TextureCoordinate.hxx".}
proc SetPoints*(this: var VrmlData_TextureCoordinate; nPoints: csize_t;
               arrPoints: ptr gp_XY) {.importcpp: "SetPoints",
                                    header: "VrmlData_TextureCoordinate.hxx".}
proc Clone*(this: VrmlData_TextureCoordinate; theOther: handle[VrmlData_Node]): handle[
    VrmlData_Node] {.noSideEffect, importcpp: "Clone",
                    header: "VrmlData_TextureCoordinate.hxx".}
proc Read*(this: var VrmlData_TextureCoordinate; theBuffer: var VrmlData_InBuffer): VrmlData_ErrorStatus {.
    importcpp: "Read", header: "VrmlData_TextureCoordinate.hxx".}
type
  VrmlData_TextureCoordinatebase_type* = VrmlData_Node

proc get_type_name*(): cstring {.importcpp: "VrmlData_TextureCoordinate::get_type_name(@)",
                              header: "VrmlData_TextureCoordinate.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "VrmlData_TextureCoordinate::get_type_descriptor(@)",
    header: "VrmlData_TextureCoordinate.hxx".}
proc DynamicType*(this: VrmlData_TextureCoordinate): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "VrmlData_TextureCoordinate.hxx".}
##  Definition of HANDLE object using Standard_DefineHandle.hxx

discard "forward decl of VrmlData_TextureCoordinate"
type
  Handle_VrmlData_TextureCoordinate* = handle[VrmlData_TextureCoordinate]
