import interface_types

import ../../tkernel/tcollection/tcollection_types
import ../../tkernel/standard/standard_types




##  Created on: 1992-02-04
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





proc newInterfaceUndefinedContent*(): InterfaceUndefinedContent {.cdecl,
    constructor, importcpp: "Interface_UndefinedContent(@)", header: "Interface_UndefinedContent.hxx".}
proc nbParams*(this: InterfaceUndefinedContent): cint {.noSideEffect, cdecl,
    importcpp: "NbParams", header: "Interface_UndefinedContent.hxx".}
proc nbLiterals*(this: InterfaceUndefinedContent): cint {.noSideEffect, cdecl,
    importcpp: "NbLiterals", header: "Interface_UndefinedContent.hxx".}
proc paramData*(this: InterfaceUndefinedContent; num: cint;
               ptype: var InterfaceParamType; ent: var Handle[StandardTransient];
               val: var Handle[TCollectionHAsciiString]): bool {.noSideEffect, cdecl,
    importcpp: "ParamData", header: "Interface_UndefinedContent.hxx".}
proc paramType*(this: InterfaceUndefinedContent; num: cint): InterfaceParamType {.
    noSideEffect, cdecl, importcpp: "ParamType", header: "Interface_UndefinedContent.hxx".}
proc isParamEntity*(this: InterfaceUndefinedContent; num: cint): bool {.noSideEffect,
    cdecl, importcpp: "IsParamEntity", header: "Interface_UndefinedContent.hxx".}
proc paramEntity*(this: InterfaceUndefinedContent; num: cint): Handle[
    StandardTransient] {.noSideEffect, cdecl, importcpp: "ParamEntity",
                        header: "Interface_UndefinedContent.hxx".}
proc paramValue*(this: InterfaceUndefinedContent; num: cint): Handle[
    TCollectionHAsciiString] {.noSideEffect, cdecl, importcpp: "ParamValue",
                              header: "Interface_UndefinedContent.hxx".}
proc reservate*(this: var InterfaceUndefinedContent; nb: cint; nblit: cint) {.cdecl,
    importcpp: "Reservate", header: "Interface_UndefinedContent.hxx".}
proc addLiteral*(this: var InterfaceUndefinedContent; ptype: InterfaceParamType;
                val: Handle[TCollectionHAsciiString]) {.cdecl,
    importcpp: "AddLiteral", header: "Interface_UndefinedContent.hxx".}
proc addEntity*(this: var InterfaceUndefinedContent; ptype: InterfaceParamType;
               ent: Handle[StandardTransient]) {.cdecl, importcpp: "AddEntity",
    header: "Interface_UndefinedContent.hxx".}
proc removeParam*(this: var InterfaceUndefinedContent; num: cint) {.cdecl,
    importcpp: "RemoveParam", header: "Interface_UndefinedContent.hxx".}
proc setLiteral*(this: var InterfaceUndefinedContent; num: cint;
                ptype: InterfaceParamType; val: Handle[TCollectionHAsciiString]) {.
    cdecl, importcpp: "SetLiteral", header: "Interface_UndefinedContent.hxx".}
proc setEntity*(this: var InterfaceUndefinedContent; num: cint;
               ptype: InterfaceParamType; ent: Handle[StandardTransient]) {.cdecl,
    importcpp: "SetEntity", header: "Interface_UndefinedContent.hxx".}
proc setEntity*(this: var InterfaceUndefinedContent; num: cint;
               ent: Handle[StandardTransient]) {.cdecl, importcpp: "SetEntity",
    header: "Interface_UndefinedContent.hxx".}
proc entityList*(this: InterfaceUndefinedContent): InterfaceEntityList {.
    noSideEffect, cdecl, importcpp: "EntityList", header: "Interface_UndefinedContent.hxx".}
proc getFromAnother*(this: var InterfaceUndefinedContent;
                    other: Handle[InterfaceUndefinedContent];
                    tc: var InterfaceCopyTool) {.cdecl, importcpp: "GetFromAnother",
    header: "Interface_UndefinedContent.hxx".}


