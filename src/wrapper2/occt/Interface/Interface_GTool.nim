##  Created on: 1998-01-08
##  Created by: Christian CAILLET
##  Copyright (c) 1998-1999 Matra Datavision
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

discard "forward decl of Interface_Protocol"
discard "forward decl of Interface_SignType"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of Interface_GeneralLib"
discard "forward decl of Interface_GeneralModule"
discard "forward decl of Interface_GTool"
discard "forward decl of Interface_GTool"
type
  HandleInterfaceGTool* = Handle[InterfaceGTool]

## ! GTool - General Tool for a Model
## ! Provides the functions performed by Protocol/GeneralModule for
## ! entities of a Model, and recorded in a GeneralLib
## ! Optimized : once an entity has been queried, the GeneralLib is
## ! not longer queried
## ! Shareable between several users : as a Handle

type
  InterfaceGTool* {.importcpp: "Interface_GTool", header: "Interface_GTool.hxx",
                   bycopy.} = object of StandardTransient ## ! Creates an empty, not set, GTool


proc constructInterfaceGTool*(): InterfaceGTool {.constructor,
    importcpp: "Interface_GTool(@)", header: "Interface_GTool.hxx".}
proc constructInterfaceGTool*(proto: Handle[InterfaceProtocol];
                             nbent: StandardInteger = 0): InterfaceGTool {.
    constructor, importcpp: "Interface_GTool(@)", header: "Interface_GTool.hxx".}
proc setSignType*(this: var InterfaceGTool; sign: Handle[InterfaceSignType]) {.
    importcpp: "SetSignType", header: "Interface_GTool.hxx".}
proc signType*(this: InterfaceGTool): Handle[InterfaceSignType] {.noSideEffect,
    importcpp: "SignType", header: "Interface_GTool.hxx".}
proc signValue*(this: InterfaceGTool; ent: Handle[StandardTransient];
               model: Handle[InterfaceInterfaceModel]): StandardCString {.
    noSideEffect, importcpp: "SignValue", header: "Interface_GTool.hxx".}
proc signName*(this: InterfaceGTool): StandardCString {.noSideEffect,
    importcpp: "SignName", header: "Interface_GTool.hxx".}
proc setProtocol*(this: var InterfaceGTool; proto: Handle[InterfaceProtocol];
                 enforce: StandardBoolean = standardFalse) {.
    importcpp: "SetProtocol", header: "Interface_GTool.hxx".}
proc protocol*(this: InterfaceGTool): Handle[InterfaceProtocol] {.noSideEffect,
    importcpp: "Protocol", header: "Interface_GTool.hxx".}
proc lib*(this: var InterfaceGTool): var InterfaceGeneralLib {.importcpp: "Lib",
    header: "Interface_GTool.hxx".}
proc reservate*(this: var InterfaceGTool; nb: StandardInteger;
               enforce: StandardBoolean = standardFalse) {.importcpp: "Reservate",
    header: "Interface_GTool.hxx".}
proc clearEntities*(this: var InterfaceGTool) {.importcpp: "ClearEntities",
    header: "Interface_GTool.hxx".}
proc select*(this: var InterfaceGTool; ent: Handle[StandardTransient];
            gmod: var Handle[InterfaceGeneralModule]; cn: var StandardInteger;
            enforce: StandardBoolean = standardFalse): StandardBoolean {.
    importcpp: "Select", header: "Interface_GTool.hxx".}
type
  InterfaceGToolbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Interface_GTool::get_type_name(@)",
                            header: "Interface_GTool.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Interface_GTool::get_type_descriptor(@)",
    header: "Interface_GTool.hxx".}
proc dynamicType*(this: InterfaceGTool): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Interface_GTool.hxx".}

