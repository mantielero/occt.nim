##  Created on: 2000-08-21
##  Created by: Andrey BETENEV
##  Copyright (c) 2000-2014 OPEN CASCADE SAS
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
  ../TColStd/TColStd_HSequenceOfHAsciiString, ../Standard/Standard_Integer,
  ../Standard/Standard_Transient, ../Standard/Standard_CString,
  ../Standard/Standard_Boolean, ../Standard/Standard_Real

discard "forward decl of Resource_Manager"
discard "forward decl of Message_Messenger"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of ShapeProcess_Context"
discard "forward decl of ShapeProcess_Context"
type
  Handle_ShapeProcess_Context* = handle[ShapeProcess_Context]

## ! Provides convenient interface to resource file
## ! Allows to load resource file and get values of
## ! attributes starting from some scope, for example
## ! if scope is defined as "ToV4" and requested parameter
## ! is "exec.op", value of "ToV4.exec.op" parameter from
## ! the resource file will be returned

type
  ShapeProcess_Context* {.importcpp: "ShapeProcess_Context",
                         header: "ShapeProcess_Context.hxx", bycopy.} = object of Standard_Transient ##
                                                                                              ## !
                                                                                              ## Creates
                                                                                              ## an
                                                                                              ## empty
                                                                                              ## tool


proc constructShapeProcess_Context*(): ShapeProcess_Context {.constructor,
    importcpp: "ShapeProcess_Context(@)", header: "ShapeProcess_Context.hxx".}
proc constructShapeProcess_Context*(file: Standard_CString;
                                   scope: Standard_CString = ""): ShapeProcess_Context {.
    constructor, importcpp: "ShapeProcess_Context(@)",
    header: "ShapeProcess_Context.hxx".}
proc Init*(this: var ShapeProcess_Context; file: Standard_CString;
          scope: Standard_CString = ""): Standard_Boolean {.importcpp: "Init",
    header: "ShapeProcess_Context.hxx".}
proc LoadResourceManager*(this: var ShapeProcess_Context; file: Standard_CString): handle[
    Resource_Manager] {.importcpp: "LoadResourceManager",
                       header: "ShapeProcess_Context.hxx".}
proc ResourceManager*(this: ShapeProcess_Context): handle[Resource_Manager] {.
    noSideEffect, importcpp: "ResourceManager", header: "ShapeProcess_Context.hxx".}
proc SetScope*(this: var ShapeProcess_Context; scope: Standard_CString) {.
    importcpp: "SetScope", header: "ShapeProcess_Context.hxx".}
proc UnSetScope*(this: var ShapeProcess_Context) {.importcpp: "UnSetScope",
    header: "ShapeProcess_Context.hxx".}
proc IsParamSet*(this: ShapeProcess_Context; param: Standard_CString): Standard_Boolean {.
    noSideEffect, importcpp: "IsParamSet", header: "ShapeProcess_Context.hxx".}
proc GetReal*(this: ShapeProcess_Context; param: Standard_CString;
             val: var Standard_Real): Standard_Boolean {.noSideEffect,
    importcpp: "GetReal", header: "ShapeProcess_Context.hxx".}
proc GetInteger*(this: ShapeProcess_Context; param: Standard_CString;
                val: var Standard_Integer): Standard_Boolean {.noSideEffect,
    importcpp: "GetInteger", header: "ShapeProcess_Context.hxx".}
proc GetBoolean*(this: ShapeProcess_Context; param: Standard_CString;
                val: var Standard_Boolean): Standard_Boolean {.noSideEffect,
    importcpp: "GetBoolean", header: "ShapeProcess_Context.hxx".}
proc GetString*(this: ShapeProcess_Context; param: Standard_CString;
               val: var TCollection_AsciiString): Standard_Boolean {.noSideEffect,
    importcpp: "GetString", header: "ShapeProcess_Context.hxx".}
proc RealVal*(this: ShapeProcess_Context; param: Standard_CString; def: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "RealVal", header: "ShapeProcess_Context.hxx".}
proc IntegerVal*(this: ShapeProcess_Context; param: Standard_CString;
                def: Standard_Integer): Standard_Integer {.noSideEffect,
    importcpp: "IntegerVal", header: "ShapeProcess_Context.hxx".}
proc BooleanVal*(this: ShapeProcess_Context; param: Standard_CString;
                def: Standard_Boolean): Standard_Boolean {.noSideEffect,
    importcpp: "BooleanVal", header: "ShapeProcess_Context.hxx".}
proc StringVal*(this: ShapeProcess_Context; param: Standard_CString;
               def: Standard_CString): Standard_CString {.noSideEffect,
    importcpp: "StringVal", header: "ShapeProcess_Context.hxx".}
proc SetMessenger*(this: var ShapeProcess_Context;
                  messenger: handle[Message_Messenger]) {.
    importcpp: "SetMessenger", header: "ShapeProcess_Context.hxx".}
proc Messenger*(this: ShapeProcess_Context): handle[Message_Messenger] {.
    noSideEffect, importcpp: "Messenger", header: "ShapeProcess_Context.hxx".}
proc SetTraceLevel*(this: var ShapeProcess_Context; tracelev: Standard_Integer) {.
    importcpp: "SetTraceLevel", header: "ShapeProcess_Context.hxx".}
proc TraceLevel*(this: ShapeProcess_Context): Standard_Integer {.noSideEffect,
    importcpp: "TraceLevel", header: "ShapeProcess_Context.hxx".}
type
  ShapeProcess_Contextbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "ShapeProcess_Context::get_type_name(@)",
                              header: "ShapeProcess_Context.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "ShapeProcess_Context::get_type_descriptor(@)",
    header: "ShapeProcess_Context.hxx".}
proc DynamicType*(this: ShapeProcess_Context): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "ShapeProcess_Context.hxx".}