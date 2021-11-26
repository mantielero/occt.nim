##  Created on: 1992-02-03
##  Created by: Christian CAILLET
##  Copyright (c) 1992-1999 Matra Datavision
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

discard "forward decl of TCollection_AsciiString"
type
  InterfaceFileParameter* {.importcpp: "Interface_FileParameter",
                           header: "Interface_FileParameter.hxx", bycopy.} = object


proc constructInterfaceFileParameter*(): InterfaceFileParameter {.constructor,
    importcpp: "Interface_FileParameter(@)", header: "Interface_FileParameter.hxx".}
proc init*(this: var InterfaceFileParameter; val: TCollectionAsciiString;
          typ: InterfaceParamType) {.importcpp: "Init",
                                   header: "Interface_FileParameter.hxx".}
proc init*(this: var InterfaceFileParameter; val: StandardCString;
          typ: InterfaceParamType) {.importcpp: "Init",
                                   header: "Interface_FileParameter.hxx".}
proc cValue*(this: InterfaceFileParameter): StandardCString {.noSideEffect,
    importcpp: "CValue", header: "Interface_FileParameter.hxx".}
proc paramType*(this: InterfaceFileParameter): InterfaceParamType {.noSideEffect,
    importcpp: "ParamType", header: "Interface_FileParameter.hxx".}
proc setEntityNumber*(this: var InterfaceFileParameter; num: cint) {.
    importcpp: "SetEntityNumber", header: "Interface_FileParameter.hxx".}
proc entityNumber*(this: InterfaceFileParameter): cint {.noSideEffect,
    importcpp: "EntityNumber", header: "Interface_FileParameter.hxx".}
proc clear*(this: var InterfaceFileParameter) {.importcpp: "Clear",
    header: "Interface_FileParameter.hxx".}
proc destroy*(this: var InterfaceFileParameter) {.importcpp: "Destroy",
    header: "Interface_FileParameter.hxx".}
proc destroyInterfaceFileParameter*(this: var InterfaceFileParameter) {.
    importcpp: "#.~Interface_FileParameter()",
    header: "Interface_FileParameter.hxx".}

























