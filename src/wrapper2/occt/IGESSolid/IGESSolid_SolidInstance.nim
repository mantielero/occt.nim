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

discard "forward decl of IGESData_IGESEntity"
discard "forward decl of IGESSolid_SolidInstance"
discard "forward decl of IGESSolid_SolidInstance"
type
  HandleIGESSolidSolidInstance* = Handle[IGESSolidSolidInstance]

## ! defines SolidInstance, Type <430> Form Number <0>
## ! in package IGESSolid
## ! This provides a mechanism for replicating a solid
## ! representation.
## !
## ! From IGES-5.3, Form may be <1> for a BREP
## ! Else it is for a Boolean Tree, Primitive, other Solid Inst.

type
  IGESSolidSolidInstance* {.importcpp: "IGESSolid_SolidInstance",
                           header: "IGESSolid_SolidInstance.hxx", bycopy.} = object of IGESDataIGESEntity


proc constructIGESSolidSolidInstance*(): IGESSolidSolidInstance {.constructor,
    importcpp: "IGESSolid_SolidInstance(@)", header: "IGESSolid_SolidInstance.hxx".}
proc init*(this: var IGESSolidSolidInstance; anEntity: Handle[IGESDataIGESEntity]) {.
    importcpp: "Init", header: "IGESSolid_SolidInstance.hxx".}
proc isBrep*(this: IGESSolidSolidInstance): StandardBoolean {.noSideEffect,
    importcpp: "IsBrep", header: "IGESSolid_SolidInstance.hxx".}
proc setBrep*(this: var IGESSolidSolidInstance; brep: StandardBoolean) {.
    importcpp: "SetBrep", header: "IGESSolid_SolidInstance.hxx".}
proc entity*(this: IGESSolidSolidInstance): Handle[IGESDataIGESEntity] {.
    noSideEffect, importcpp: "Entity", header: "IGESSolid_SolidInstance.hxx".}
type
  IGESSolidSolidInstancebaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESSolid_SolidInstance::get_type_name(@)",
                            header: "IGESSolid_SolidInstance.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESSolid_SolidInstance::get_type_descriptor(@)",
    header: "IGESSolid_SolidInstance.hxx".}
proc dynamicType*(this: IGESSolidSolidInstance): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESSolid_SolidInstance.hxx".}

