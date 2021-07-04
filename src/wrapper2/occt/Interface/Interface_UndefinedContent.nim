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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Integer,
  ../TColStd/TColStd_HArray1OfInteger, Interface_HArray1OfHAsciiString,
  Interface_EntityList, ../Standard/Standard_Transient,
  ../Standard/Standard_Boolean, Interface_ParamType

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Interface_InterfaceMismatch"
discard "forward decl of Interface_InterfaceError"
discard "forward decl of Standard_Transient"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of Interface_EntityList"
discard "forward decl of Interface_CopyTool"
discard "forward decl of Interface_UndefinedContent"
discard "forward decl of Interface_UndefinedContent"
type
  Handle_Interface_UndefinedContent* = handle[Interface_UndefinedContent]

## ! Defines resources for an "Undefined Entity" : such an Entity
## ! is used to describe an Entity which complies with the Norm,
## ! but of an Unknown Type : hence it is kept under a literal
## ! form (avoiding to loose data). UndefinedContent offers a way
## ! to store a list of Parameters, as literals or references to
## ! other Entities
## !
## ! Each Interface must provide one "UndefinedEntity", which must
## ! have same basic description as all its types of entities :
## ! the best way would be double inheritance : on the Entity Root
## ! of the Norm and on an general "UndefinedEntity"
## !
## ! While it is not possible to do so, the UndefinedEntity of each
## ! Interface can define its own UndefinedEntity by INCLUDING
## ! (in a field) this UndefinedContent
## !
## ! Hence, for that UndefinedEntity, define a Constructor which
## ! creates this UndefinedContent, plus access methods to it
## ! (or to its data, calling methods defined here).
## !
## ! Finally, the Protocols of each norm have to Create and
## ! Recognize Unknown Entities of this norm

type
  Interface_UndefinedContent* {.importcpp: "Interface_UndefinedContent",
                               header: "Interface_UndefinedContent.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                          ## !
                                                                                                          ## Defines
                                                                                                          ## an
                                                                                                          ## empty
                                                                                                          ## UndefinedContent


proc constructInterface_UndefinedContent*(): Interface_UndefinedContent {.
    constructor, importcpp: "Interface_UndefinedContent(@)",
    header: "Interface_UndefinedContent.hxx".}
proc NbParams*(this: Interface_UndefinedContent): Standard_Integer {.noSideEffect,
    importcpp: "NbParams", header: "Interface_UndefinedContent.hxx".}
proc NbLiterals*(this: Interface_UndefinedContent): Standard_Integer {.noSideEffect,
    importcpp: "NbLiterals", header: "Interface_UndefinedContent.hxx".}
proc ParamData*(this: Interface_UndefinedContent; num: Standard_Integer;
               ptype: var Interface_ParamType; ent: var handle[Standard_Transient];
               val: var handle[TCollection_HAsciiString]): Standard_Boolean {.
    noSideEffect, importcpp: "ParamData", header: "Interface_UndefinedContent.hxx".}
proc ParamType*(this: Interface_UndefinedContent; num: Standard_Integer): Interface_ParamType {.
    noSideEffect, importcpp: "ParamType", header: "Interface_UndefinedContent.hxx".}
proc IsParamEntity*(this: Interface_UndefinedContent; num: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsParamEntity",
    header: "Interface_UndefinedContent.hxx".}
proc ParamEntity*(this: Interface_UndefinedContent; num: Standard_Integer): handle[
    Standard_Transient] {.noSideEffect, importcpp: "ParamEntity",
                         header: "Interface_UndefinedContent.hxx".}
proc ParamValue*(this: Interface_UndefinedContent; num: Standard_Integer): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "ParamValue",
                               header: "Interface_UndefinedContent.hxx".}
proc Reservate*(this: var Interface_UndefinedContent; nb: Standard_Integer;
               nblit: Standard_Integer) {.importcpp: "Reservate", header: "Interface_UndefinedContent.hxx".}
proc AddLiteral*(this: var Interface_UndefinedContent; ptype: Interface_ParamType;
                val: handle[TCollection_HAsciiString]) {.importcpp: "AddLiteral",
    header: "Interface_UndefinedContent.hxx".}
proc AddEntity*(this: var Interface_UndefinedContent; ptype: Interface_ParamType;
               ent: handle[Standard_Transient]) {.importcpp: "AddEntity",
    header: "Interface_UndefinedContent.hxx".}
proc RemoveParam*(this: var Interface_UndefinedContent; num: Standard_Integer) {.
    importcpp: "RemoveParam", header: "Interface_UndefinedContent.hxx".}
proc SetLiteral*(this: var Interface_UndefinedContent; num: Standard_Integer;
                ptype: Interface_ParamType; val: handle[TCollection_HAsciiString]) {.
    importcpp: "SetLiteral", header: "Interface_UndefinedContent.hxx".}
proc SetEntity*(this: var Interface_UndefinedContent; num: Standard_Integer;
               ptype: Interface_ParamType; ent: handle[Standard_Transient]) {.
    importcpp: "SetEntity", header: "Interface_UndefinedContent.hxx".}
proc SetEntity*(this: var Interface_UndefinedContent; num: Standard_Integer;
               ent: handle[Standard_Transient]) {.importcpp: "SetEntity",
    header: "Interface_UndefinedContent.hxx".}
proc EntityList*(this: Interface_UndefinedContent): Interface_EntityList {.
    noSideEffect, importcpp: "EntityList", header: "Interface_UndefinedContent.hxx".}
proc GetFromAnother*(this: var Interface_UndefinedContent;
                    other: handle[Interface_UndefinedContent];
                    TC: var Interface_CopyTool) {.importcpp: "GetFromAnother",
    header: "Interface_UndefinedContent.hxx".}
type
  Interface_UndefinedContentbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Interface_UndefinedContent::get_type_name(@)",
                              header: "Interface_UndefinedContent.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Interface_UndefinedContent::get_type_descriptor(@)",
    header: "Interface_UndefinedContent.hxx".}
proc DynamicType*(this: Interface_UndefinedContent): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "Interface_UndefinedContent.hxx".}