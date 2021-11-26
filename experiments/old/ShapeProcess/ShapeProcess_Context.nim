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

discard "forward decl of Resource_Manager"
discard "forward decl of Message_Messenger"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of ShapeProcess_Context"
discard "forward decl of ShapeProcess_Context"
type
  HandleC1C1* = Handle[ShapeProcessContext]

## ! Provides convenient interface to resource file
## ! Allows to load resource file and get values of
## ! attributes starting from some scope, for example
## ! if scope is defined as "ToV4" and requested parameter
## ! is "exec.op", value of "ToV4.exec.op" parameter from
## ! the resource file will be returned

type
  ShapeProcessContext* {.importcpp: "ShapeProcess_Context",
                        header: "ShapeProcess_Context.hxx", bycopy.} = object of StandardTransient ##
                                                                                            ## !
                                                                                            ## Creates
                                                                                            ## an
                                                                                            ## empty
                                                                                            ## tool


proc constructShapeProcessContext*(): ShapeProcessContext {.constructor,
    importcpp: "ShapeProcess_Context(@)", header: "ShapeProcess_Context.hxx".}
proc constructShapeProcessContext*(file: StandardCString;
                                  scope: StandardCString = ""): ShapeProcessContext {.
    constructor, importcpp: "ShapeProcess_Context(@)",
    header: "ShapeProcess_Context.hxx".}
proc init*(this: var ShapeProcessContext; file: StandardCString;
          scope: StandardCString = ""): bool {.importcpp: "Init",
    header: "ShapeProcess_Context.hxx".}
proc loadResourceManager*(this: var ShapeProcessContext; file: StandardCString): Handle[
    ResourceManager] {.importcpp: "LoadResourceManager",
                      header: "ShapeProcess_Context.hxx".}
proc resourceManager*(this: ShapeProcessContext): Handle[ResourceManager] {.
    noSideEffect, importcpp: "ResourceManager", header: "ShapeProcess_Context.hxx".}
proc setScope*(this: var ShapeProcessContext; scope: StandardCString) {.
    importcpp: "SetScope", header: "ShapeProcess_Context.hxx".}
proc unSetScope*(this: var ShapeProcessContext) {.importcpp: "UnSetScope",
    header: "ShapeProcess_Context.hxx".}
proc isParamSet*(this: ShapeProcessContext; param: StandardCString): bool {.
    noSideEffect, importcpp: "IsParamSet", header: "ShapeProcess_Context.hxx".}
proc getReal*(this: ShapeProcessContext; param: StandardCString; val: var cfloat): bool {.
    noSideEffect, importcpp: "GetReal", header: "ShapeProcess_Context.hxx".}
proc getInteger*(this: ShapeProcessContext; param: StandardCString; val: var cint): bool {.
    noSideEffect, importcpp: "GetInteger", header: "ShapeProcess_Context.hxx".}
proc getBoolean*(this: ShapeProcessContext; param: StandardCString; val: var bool): bool {.
    noSideEffect, importcpp: "GetBoolean", header: "ShapeProcess_Context.hxx".}
proc getString*(this: ShapeProcessContext; param: StandardCString;
               val: var TCollectionAsciiString): bool {.noSideEffect,
    importcpp: "GetString", header: "ShapeProcess_Context.hxx".}
proc realVal*(this: ShapeProcessContext; param: StandardCString; def: cfloat): cfloat {.
    noSideEffect, importcpp: "RealVal", header: "ShapeProcess_Context.hxx".}
proc integerVal*(this: ShapeProcessContext; param: StandardCString; def: cint): cint {.
    noSideEffect, importcpp: "IntegerVal", header: "ShapeProcess_Context.hxx".}
proc booleanVal*(this: ShapeProcessContext; param: StandardCString; def: bool): bool {.
    noSideEffect, importcpp: "BooleanVal", header: "ShapeProcess_Context.hxx".}
proc stringVal*(this: ShapeProcessContext; param: StandardCString;
               def: StandardCString): StandardCString {.noSideEffect,
    importcpp: "StringVal", header: "ShapeProcess_Context.hxx".}
proc setMessenger*(this: var ShapeProcessContext;
                  messenger: Handle[MessageMessenger]) {.
    importcpp: "SetMessenger", header: "ShapeProcess_Context.hxx".}
proc messenger*(this: ShapeProcessContext): Handle[MessageMessenger] {.noSideEffect,
    importcpp: "Messenger", header: "ShapeProcess_Context.hxx".}
proc setTraceLevel*(this: var ShapeProcessContext; tracelev: cint) {.
    importcpp: "SetTraceLevel", header: "ShapeProcess_Context.hxx".}
proc traceLevel*(this: ShapeProcessContext): cint {.noSideEffect,
    importcpp: "TraceLevel", header: "ShapeProcess_Context.hxx".}
type
  ShapeProcessContextbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "ShapeProcess_Context::get_type_name(@)",
                            header: "ShapeProcess_Context.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "ShapeProcess_Context::get_type_descriptor(@)",
    header: "ShapeProcess_Context.hxx".}
proc dynamicType*(this: ShapeProcessContext): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "ShapeProcess_Context.hxx".}

























