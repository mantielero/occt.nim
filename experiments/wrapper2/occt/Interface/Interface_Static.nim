##  Created on: 1995-12-08
##  Created by: Christian CAILLET
##  Copyright (c) 1995-1999 Matra Datavision
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

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_InterfaceError"
discard "forward decl of Interface_Static"
discard "forward decl of Interface_Static"
type
  HandleC1C1* = Handle[InterfaceStatic]

## ! This class gives a way to manage meaningfull static variables,
## ! used as "global" parameters in various procedures.
## !
## ! A Static brings a specification (its type, constraints if any)
## ! and a value. Its basic form is a string, it can be specified
## ! as integer or real or enumerative string, and queried as such.
## ! Its string content, which is a Handle(HAsciiString) can be
## ! shared by other data structures, hence gives a direct on line
## ! access to its value.
## !
## ! All this description is inherited from TypedValue
## !
## ! A Static can be given an initial value, it can be filled from,
## ! either a set of Resources (an applicative feature which
## ! accesses and manages parameter files), or environment or
## ! internal definition : these define families of Static.
## ! In addition, it supports a status for reinitialisation : an
## ! initialisation procedure can ask if the value of the Static
## ! has changed from its last call, in this case does something
## ! then marks the Status "uptodate", else it does nothing.
## !
## ! Statics are named and recorded then accessed in an alphabetic
## ! dictionary

type
  InterfaceStatic* {.importcpp: "Interface_Static", header: "Interface_Static.hxx",
                    bycopy.} = object of InterfaceTypedValue ## ! Creates and records a Static, with a family and a name
                                                        ## ! family can report to a name of ressource or to a system or
                                                        ## ! internal definition. The name must be unique.
                                                        ## !
                                                        ## ! type gives the type of the parameter, default is free text
                                                        ## ! Also available : Integer, Real, Enum, Entity (i.e. Object)
                                                        ## ! More precise specifications, titles, can be given to the
                                                        ## ! Static once created
                                                        ## !
                                                        ## ! init gives an initial value. If it is not given, the Static
                                                        ## ! begin as "not set", its value is empty


proc constructInterfaceStatic*(family: StandardCString; name: StandardCString;
                              `type`: InterfaceParamType = interfaceParamText;
                              init: StandardCString = ""): InterfaceStatic {.
    constructor, importcpp: "Interface_Static(@)", header: "Interface_Static.hxx".}
proc constructInterfaceStatic*(family: StandardCString; name: StandardCString;
                              other: Handle[InterfaceStatic]): InterfaceStatic {.
    constructor, importcpp: "Interface_Static(@)", header: "Interface_Static.hxx".}
proc printStatic*(this: InterfaceStatic; s: var StandardOStream) {.noSideEffect,
    importcpp: "PrintStatic", header: "Interface_Static.hxx".}
proc family*(this: InterfaceStatic): StandardCString {.noSideEffect,
    importcpp: "Family", header: "Interface_Static.hxx".}
proc setWild*(this: var InterfaceStatic; wildcard: Handle[InterfaceStatic]) {.
    importcpp: "SetWild", header: "Interface_Static.hxx".}
proc wild*(this: InterfaceStatic): Handle[InterfaceStatic] {.noSideEffect,
    importcpp: "Wild", header: "Interface_Static.hxx".}
proc setUptodate*(this: var InterfaceStatic) {.importcpp: "SetUptodate",
    header: "Interface_Static.hxx".}
proc updatedStatus*(this: InterfaceStatic): bool {.noSideEffect,
    importcpp: "UpdatedStatus", header: "Interface_Static.hxx".}
proc init*(family: StandardCString; name: StandardCString;
          `type`: InterfaceParamType; init: StandardCString = ""): bool {.
    importcpp: "Interface_Static::Init(@)", header: "Interface_Static.hxx".}
proc init*(family: StandardCString; name: StandardCString; `type`: StandardCharacter;
          init: StandardCString = ""): bool {.importcpp: "Interface_Static::Init(@)",
    header: "Interface_Static.hxx".}
proc `static`*(name: StandardCString): Handle[InterfaceStatic] {.
    importcpp: "Interface_Static::Static(@)", header: "Interface_Static.hxx".}
proc isPresent*(name: StandardCString): bool {.
    importcpp: "Interface_Static::IsPresent(@)", header: "Interface_Static.hxx".}
proc cDef*(name: StandardCString; part: StandardCString): StandardCString {.
    importcpp: "Interface_Static::CDef(@)", header: "Interface_Static.hxx".}
proc iDef*(name: StandardCString; part: StandardCString): cint {.
    importcpp: "Interface_Static::IDef(@)", header: "Interface_Static.hxx".}
proc isSet*(name: StandardCString; proper: bool = true): bool {.
    importcpp: "Interface_Static::IsSet(@)", header: "Interface_Static.hxx".}
proc cVal*(name: StandardCString): StandardCString {.
    importcpp: "Interface_Static::CVal(@)", header: "Interface_Static.hxx".}
proc iVal*(name: StandardCString): cint {.importcpp: "Interface_Static::IVal(@)",
                                      header: "Interface_Static.hxx".}
proc rVal*(name: StandardCString): cfloat {.importcpp: "Interface_Static::RVal(@)",
                                        header: "Interface_Static.hxx".}
proc setCVal*(name: StandardCString; val: StandardCString): bool {.
    importcpp: "Interface_Static::SetCVal(@)", header: "Interface_Static.hxx".}
proc setIVal*(name: StandardCString; val: cint): bool {.
    importcpp: "Interface_Static::SetIVal(@)", header: "Interface_Static.hxx".}
proc setRVal*(name: StandardCString; val: cfloat): bool {.
    importcpp: "Interface_Static::SetRVal(@)", header: "Interface_Static.hxx".}
proc update*(name: StandardCString): bool {.importcpp: "Interface_Static::Update(@)",
                                        header: "Interface_Static.hxx".}
proc isUpdated*(name: StandardCString): bool {.
    importcpp: "Interface_Static::IsUpdated(@)", header: "Interface_Static.hxx".}
proc items*(mode: cint = 0; criter: StandardCString = ""): Handle[
    TColStdHSequenceOfHAsciiString] {.importcpp: "Interface_Static::Items(@)",
                                     header: "Interface_Static.hxx".}
proc standards*() {.importcpp: "Interface_Static::Standards(@)",
                  header: "Interface_Static.hxx".}
type
  InterfaceStaticbaseType* = InterfaceTypedValue

proc getTypeName*(): cstring {.importcpp: "Interface_Static::get_type_name(@)",
                            header: "Interface_Static.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Interface_Static::get_type_descriptor(@)",
    header: "Interface_Static.hxx".}
proc dynamicType*(this: InterfaceStatic): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Interface_Static.hxx".}

























