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

import
  ../Standard/Standard, ../Standard/Standard_Type,
  ../TColStd/TColStd_Array1OfTransient, Interface_CopyControl,
  ../Standard/Standard_Boolean

discard "forward decl of Interface_InterfaceModel"
discard "forward decl of Interface_InterfaceError"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_CopyMap"
discard "forward decl of Interface_CopyMap"
type
  Handle_Interface_CopyMap* = handle[Interface_CopyMap]

## ! Manages a Map for the need of single Transfers, such as Copies
## ! In such transfer, Starting Entities are read from a unique
## ! Starting Model, and each transferred Entity is bound to one
## ! and only one Result, which cannot be changed later.

type
  Interface_CopyMap* {.importcpp: "Interface_CopyMap",
                      header: "Interface_CopyMap.hxx", bycopy.} = object of Interface_CopyControl ##
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


proc constructInterface_CopyMap*(amodel: handle[Interface_InterfaceModel]): Interface_CopyMap {.
    constructor, importcpp: "Interface_CopyMap(@)", header: "Interface_CopyMap.hxx".}
proc Clear*(this: var Interface_CopyMap) {.importcpp: "Clear",
                                       header: "Interface_CopyMap.hxx".}
proc Model*(this: Interface_CopyMap): handle[Interface_InterfaceModel] {.
    noSideEffect, importcpp: "Model", header: "Interface_CopyMap.hxx".}
proc Bind*(this: var Interface_CopyMap; ent: handle[Standard_Transient];
          res: handle[Standard_Transient]) {.importcpp: "Bind",
    header: "Interface_CopyMap.hxx".}
proc Search*(this: Interface_CopyMap; ent: handle[Standard_Transient];
            res: var handle[Standard_Transient]): Standard_Boolean {.noSideEffect,
    importcpp: "Search", header: "Interface_CopyMap.hxx".}
type
  Interface_CopyMapbase_type* = Interface_CopyControl

proc get_type_name*(): cstring {.importcpp: "Interface_CopyMap::get_type_name(@)",
                              header: "Interface_CopyMap.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Interface_CopyMap::get_type_descriptor(@)",
    header: "Interface_CopyMap.hxx".}
proc DynamicType*(this: Interface_CopyMap): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Interface_CopyMap.hxx".}