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

import
  ../Standard/Standard, ../Standard/Standard_Type,
  ../TCollection/TCollection_AsciiString, Interface_ParamType,
  ../Standard/Standard_Type, ../Standard/Standard_Integer,
  ../Standard/Standard_Real, ../TColStd/TColStd_HArray1OfAsciiString,
  Interface_StaticSatisfies, ../Standard/Standard_Boolean, Interface_TypedValue,
  ../Standard/Standard_CString, ../Standard/Standard_Character,
  ../TColStd/TColStd_HSequenceOfHAsciiString

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_InterfaceError"
discard "forward decl of Interface_Static"
discard "forward decl of Interface_Static"
type
  Handle_Interface_Static* = handle[Interface_Static]

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
  Interface_Static* {.importcpp: "Interface_Static",
                     header: "Interface_Static.hxx", bycopy.} = object of Interface_TypedValue ##
                                                                                        ## !
                                                                                        ## Creates
                                                                                        ## and
                                                                                        ## records
                                                                                        ## a
                                                                                        ## Static,
                                                                                        ## with
                                                                                        ## a
                                                                                        ## family
                                                                                        ## and
                                                                                        ## a
                                                                                        ## name
                                                                                        ##
                                                                                        ## !
                                                                                        ## family
                                                                                        ## can
                                                                                        ## report
                                                                                        ## to
                                                                                        ## a
                                                                                        ## name
                                                                                        ## of
                                                                                        ## ressource
                                                                                        ## or
                                                                                        ## to
                                                                                        ## a
                                                                                        ## system
                                                                                        ## or
                                                                                        ##
                                                                                        ## !
                                                                                        ## internal
                                                                                        ## definition.
                                                                                        ## The
                                                                                        ## name
                                                                                        ## must
                                                                                        ## be
                                                                                        ## unique.
                                                                                        ##
                                                                                        ## !
                                                                                        ##
                                                                                        ## !
                                                                                        ## type
                                                                                        ## gives
                                                                                        ## the
                                                                                        ## type
                                                                                        ## of
                                                                                        ## the
                                                                                        ## parameter,
                                                                                        ## default
                                                                                        ## is
                                                                                        ## free
                                                                                        ## text
                                                                                        ##
                                                                                        ## !
                                                                                        ## Also
                                                                                        ## available
                                                                                        ## :
                                                                                        ## Integer,
                                                                                        ## Real,
                                                                                        ## Enum,
                                                                                        ## Entity
                                                                                        ## (i.e.
                                                                                        ## Object)
                                                                                        ##
                                                                                        ## !
                                                                                        ## More
                                                                                        ## precise
                                                                                        ## specifications,
                                                                                        ## titles,
                                                                                        ## can
                                                                                        ## be
                                                                                        ## given
                                                                                        ## to
                                                                                        ## the
                                                                                        ##
                                                                                        ## !
                                                                                        ## Static
                                                                                        ## once
                                                                                        ## created
                                                                                        ##
                                                                                        ## !
                                                                                        ##
                                                                                        ## !
                                                                                        ## init
                                                                                        ## gives
                                                                                        ## an
                                                                                        ## initial
                                                                                        ## value.
                                                                                        ## If
                                                                                        ## it
                                                                                        ## is
                                                                                        ## not
                                                                                        ## given,
                                                                                        ## the
                                                                                        ## Static
                                                                                        ##
                                                                                        ## !
                                                                                        ## begin
                                                                                        ## as
                                                                                        ## "not
                                                                                        ## set",
                                                                                        ## its
                                                                                        ## value
                                                                                        ## is
                                                                                        ## empty


proc constructInterface_Static*(family: Standard_CString; name: Standard_CString;
    `type`: Interface_ParamType = Interface_ParamText; init: Standard_CString = ""): Interface_Static {.
    constructor, importcpp: "Interface_Static(@)", header: "Interface_Static.hxx".}
proc constructInterface_Static*(family: Standard_CString; name: Standard_CString;
                               other: handle[Interface_Static]): Interface_Static {.
    constructor, importcpp: "Interface_Static(@)", header: "Interface_Static.hxx".}
proc PrintStatic*(this: Interface_Static; S: var Standard_OStream) {.noSideEffect,
    importcpp: "PrintStatic", header: "Interface_Static.hxx".}
proc Family*(this: Interface_Static): Standard_CString {.noSideEffect,
    importcpp: "Family", header: "Interface_Static.hxx".}
proc SetWild*(this: var Interface_Static; wildcard: handle[Interface_Static]) {.
    importcpp: "SetWild", header: "Interface_Static.hxx".}
proc Wild*(this: Interface_Static): handle[Interface_Static] {.noSideEffect,
    importcpp: "Wild", header: "Interface_Static.hxx".}
proc SetUptodate*(this: var Interface_Static) {.importcpp: "SetUptodate",
    header: "Interface_Static.hxx".}
proc UpdatedStatus*(this: Interface_Static): Standard_Boolean {.noSideEffect,
    importcpp: "UpdatedStatus", header: "Interface_Static.hxx".}
proc Init*(family: Standard_CString; name: Standard_CString;
          `type`: Interface_ParamType; init: Standard_CString = ""): Standard_Boolean {.
    importcpp: "Interface_Static::Init(@)", header: "Interface_Static.hxx".}
proc Init*(family: Standard_CString; name: Standard_CString;
          `type`: Standard_Character; init: Standard_CString = ""): Standard_Boolean {.
    importcpp: "Interface_Static::Init(@)", header: "Interface_Static.hxx".}
proc Static*(name: Standard_CString): handle[Interface_Static] {.
    importcpp: "Interface_Static::Static(@)", header: "Interface_Static.hxx".}
proc IsPresent*(name: Standard_CString): Standard_Boolean {.
    importcpp: "Interface_Static::IsPresent(@)", header: "Interface_Static.hxx".}
proc CDef*(name: Standard_CString; part: Standard_CString): Standard_CString {.
    importcpp: "Interface_Static::CDef(@)", header: "Interface_Static.hxx".}
proc IDef*(name: Standard_CString; part: Standard_CString): Standard_Integer {.
    importcpp: "Interface_Static::IDef(@)", header: "Interface_Static.hxx".}
proc IsSet*(name: Standard_CString; proper: Standard_Boolean = Standard_True): Standard_Boolean {.
    importcpp: "Interface_Static::IsSet(@)", header: "Interface_Static.hxx".}
proc CVal*(name: Standard_CString): Standard_CString {.
    importcpp: "Interface_Static::CVal(@)", header: "Interface_Static.hxx".}
proc IVal*(name: Standard_CString): Standard_Integer {.
    importcpp: "Interface_Static::IVal(@)", header: "Interface_Static.hxx".}
proc RVal*(name: Standard_CString): Standard_Real {.
    importcpp: "Interface_Static::RVal(@)", header: "Interface_Static.hxx".}
proc SetCVal*(name: Standard_CString; val: Standard_CString): Standard_Boolean {.
    importcpp: "Interface_Static::SetCVal(@)", header: "Interface_Static.hxx".}
proc SetIVal*(name: Standard_CString; val: Standard_Integer): Standard_Boolean {.
    importcpp: "Interface_Static::SetIVal(@)", header: "Interface_Static.hxx".}
proc SetRVal*(name: Standard_CString; val: Standard_Real): Standard_Boolean {.
    importcpp: "Interface_Static::SetRVal(@)", header: "Interface_Static.hxx".}
proc Update*(name: Standard_CString): Standard_Boolean {.
    importcpp: "Interface_Static::Update(@)", header: "Interface_Static.hxx".}
proc IsUpdated*(name: Standard_CString): Standard_Boolean {.
    importcpp: "Interface_Static::IsUpdated(@)", header: "Interface_Static.hxx".}
proc Items*(mode: Standard_Integer = 0; criter: Standard_CString = ""): handle[
    TColStd_HSequenceOfHAsciiString] {.importcpp: "Interface_Static::Items(@)",
                                      header: "Interface_Static.hxx".}
proc Standards*() {.importcpp: "Interface_Static::Standards(@)",
                  header: "Interface_Static.hxx".}
type
  Interface_Staticbase_type* = Interface_TypedValue

proc get_type_name*(): cstring {.importcpp: "Interface_Static::get_type_name(@)",
                              header: "Interface_Static.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Interface_Static::get_type_descriptor(@)",
    header: "Interface_Static.hxx".}
proc DynamicType*(this: Interface_Static): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Interface_Static.hxx".}