##  Created on: 1993-03-16
##  Created by: Christian CAILLET
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

discard "forward decl of Interface_InterfaceModel"
discard "forward decl of Interface_InterfaceError"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_CopyMap"
discard "forward decl of Interface_CopyMap"
type
  HandleInterfaceCopyMap* = Handle[InterfaceCopyMap]

## ! Manages a Map for the need of single Transfers, such as Copies
## ! In such transfer, Starting Entities are read from a unique
## ! Starting Model, and each transferred Entity is bound to one
## ! and only one Result, which cannot be changed later.

type
  InterfaceCopyMap* {.importcpp: "Interface_CopyMap",
                     header: "Interface_CopyMap.hxx", bycopy.} = object of InterfaceCopyControl ##
                                                                                         ## !
                                                                                         ## Creates
                                                                                         ## a
                                                                                         ## CopyMap
                                                                                         ## adapted
                                                                                         ## to
                                                                                         ## work
                                                                                         ## from
                                                                                         ## a
                                                                                         ## Model


proc constructInterfaceCopyMap*(amodel: Handle[InterfaceInterfaceModel]): InterfaceCopyMap {.
    constructor, importcpp: "Interface_CopyMap(@)", header: "Interface_CopyMap.hxx".}
proc clear*(this: var InterfaceCopyMap) {.importcpp: "Clear",
                                      header: "Interface_CopyMap.hxx".}
proc model*(this: InterfaceCopyMap): Handle[InterfaceInterfaceModel] {.noSideEffect,
    importcpp: "Model", header: "Interface_CopyMap.hxx".}
proc `bind`*(this: var InterfaceCopyMap; ent: Handle[StandardTransient];
            res: Handle[StandardTransient]) {.importcpp: "Bind",
    header: "Interface_CopyMap.hxx".}
proc search*(this: InterfaceCopyMap; ent: Handle[StandardTransient];
            res: var Handle[StandardTransient]): StandardBoolean {.noSideEffect,
    importcpp: "Search", header: "Interface_CopyMap.hxx".}
type
  InterfaceCopyMapbaseType* = InterfaceCopyControl

proc getTypeName*(): cstring {.importcpp: "Interface_CopyMap::get_type_name(@)",
                            header: "Interface_CopyMap.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Interface_CopyMap::get_type_descriptor(@)",
    header: "Interface_CopyMap.hxx".}
proc dynamicType*(this: InterfaceCopyMap): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Interface_CopyMap.hxx".}

