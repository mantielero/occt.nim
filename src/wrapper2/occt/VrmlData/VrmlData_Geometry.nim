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
  VrmlData_Node, ../TopoDS/TopoDS_TShape

## *
##   Implementation of the Geometry node.
##   Contains the topological representation (TopoDS_Shell) of the VRML geometry
##

type
  VrmlData_Geometry* {.importcpp: "VrmlData_Geometry",
                      header: "VrmlData_Geometry.hxx", bycopy.} = object of VrmlData_Node ##  ---------- PUBLIC METHODS ----------
                                                                                   ## *
                                                                                   ##  Empty constructor
                                                                                   ##
                                                                                   ##  ---------- PROTECTED METHODS ----------
                                                                                   ## *
                                                                                   ##  Set the TShape.
                                                                                   ##
                                                                                   ##  ---------- PROTECTED FIELDS ----------
                                                                                   ##  Declaration of CASCADE RTTI


proc constructVrmlData_Geometry*(): VrmlData_Geometry {.constructor,
    importcpp: "VrmlData_Geometry(@)", header: "VrmlData_Geometry.hxx".}
proc constructVrmlData_Geometry*(theScene: VrmlData_Scene; theName: cstring): VrmlData_Geometry {.
    constructor, importcpp: "VrmlData_Geometry(@)", header: "VrmlData_Geometry.hxx".}
proc TShape*(this: var VrmlData_Geometry): handle[TopoDS_TShape] {.
    importcpp: "TShape", header: "VrmlData_Geometry.hxx".}
type
  VrmlData_Geometrybase_type* = VrmlData_Node

proc get_type_name*(): cstring {.importcpp: "VrmlData_Geometry::get_type_name(@)",
                              header: "VrmlData_Geometry.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "VrmlData_Geometry::get_type_descriptor(@)",
    header: "VrmlData_Geometry.hxx".}
proc DynamicType*(this: VrmlData_Geometry): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "VrmlData_Geometry.hxx".}
##  Definition of HANDLE object using Standard_DefineHandle.hxx

discard "forward decl of VrmlData_Geometry"
type
  Handle_VrmlData_Geometry* = handle[VrmlData_Geometry]
