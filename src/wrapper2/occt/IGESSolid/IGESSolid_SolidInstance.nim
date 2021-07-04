##  Created on: 1993-01-09
##  Created by: CKY / Contract Toubro-Larsen ( SIVA )
##  Copyright (c) 1993-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
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
  ../Standard/Standard, ../Standard/Standard_Type,
  ../IGESData/IGESData_IGESEntity, ../Standard/Standard_Boolean

discard "forward decl of IGESData_IGESEntity"
discard "forward decl of IGESSolid_SolidInstance"
discard "forward decl of IGESSolid_SolidInstance"
type
  Handle_IGESSolid_SolidInstance* = handle[IGESSolid_SolidInstance]

## ! defines SolidInstance, Type <430> Form Number <0>
## ! in package IGESSolid
## ! This provides a mechanism for replicating a solid
## ! representation.
## !
## ! From IGES-5.3, Form may be <1> for a BREP
## ! Else it is for a Boolean Tree, Primitive, other Solid Inst.

type
  IGESSolid_SolidInstance* {.importcpp: "IGESSolid_SolidInstance",
                            header: "IGESSolid_SolidInstance.hxx", bycopy.} = object of IGESData_IGESEntity


proc constructIGESSolid_SolidInstance*(): IGESSolid_SolidInstance {.constructor,
    importcpp: "IGESSolid_SolidInstance(@)", header: "IGESSolid_SolidInstance.hxx".}
proc Init*(this: var IGESSolid_SolidInstance; anEntity: handle[IGESData_IGESEntity]) {.
    importcpp: "Init", header: "IGESSolid_SolidInstance.hxx".}
proc IsBrep*(this: IGESSolid_SolidInstance): Standard_Boolean {.noSideEffect,
    importcpp: "IsBrep", header: "IGESSolid_SolidInstance.hxx".}
proc SetBrep*(this: var IGESSolid_SolidInstance; brep: Standard_Boolean) {.
    importcpp: "SetBrep", header: "IGESSolid_SolidInstance.hxx".}
proc Entity*(this: IGESSolid_SolidInstance): handle[IGESData_IGESEntity] {.
    noSideEffect, importcpp: "Entity", header: "IGESSolid_SolidInstance.hxx".}
type
  IGESSolid_SolidInstancebase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESSolid_SolidInstance::get_type_name(@)",
                              header: "IGESSolid_SolidInstance.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESSolid_SolidInstance::get_type_descriptor(@)",
    header: "IGESSolid_SolidInstance.hxx".}
proc DynamicType*(this: IGESSolid_SolidInstance): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESSolid_SolidInstance.hxx".}