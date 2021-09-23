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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, Interface_ParamType,
  ../Standard/Standard_PCharacter, ../Standard/Standard_Integer,
  ../Standard/Standard_CString

discard "forward decl of TCollection_AsciiString"
type
  Interface_FileParameter* {.importcpp: "Interface_FileParameter",
                            header: "Interface_FileParameter.hxx", bycopy.} = object


proc constructInterface_FileParameter*(): Interface_FileParameter {.constructor,
    importcpp: "Interface_FileParameter(@)", header: "Interface_FileParameter.hxx".}
proc Init*(this: var Interface_FileParameter; val: TCollection_AsciiString;
          typ: Interface_ParamType) {.importcpp: "Init",
                                    header: "Interface_FileParameter.hxx".}
proc Init*(this: var Interface_FileParameter; val: Standard_CString;
          typ: Interface_ParamType) {.importcpp: "Init",
                                    header: "Interface_FileParameter.hxx".}
proc CValue*(this: Interface_FileParameter): Standard_CString {.noSideEffect,
    importcpp: "CValue", header: "Interface_FileParameter.hxx".}
proc ParamType*(this: Interface_FileParameter): Interface_ParamType {.noSideEffect,
    importcpp: "ParamType", header: "Interface_FileParameter.hxx".}
proc SetEntityNumber*(this: var Interface_FileParameter; num: Standard_Integer) {.
    importcpp: "SetEntityNumber", header: "Interface_FileParameter.hxx".}
proc EntityNumber*(this: Interface_FileParameter): Standard_Integer {.noSideEffect,
    importcpp: "EntityNumber", header: "Interface_FileParameter.hxx".}
proc Clear*(this: var Interface_FileParameter) {.importcpp: "Clear",
    header: "Interface_FileParameter.hxx".}
proc Destroy*(this: var Interface_FileParameter) {.importcpp: "Destroy",
    header: "Interface_FileParameter.hxx".}
proc destroyInterface_FileParameter*(this: var Interface_FileParameter) {.
    importcpp: "#.~Interface_FileParameter()",
    header: "Interface_FileParameter.hxx".}