##  Created on: 1995-12-01
##  Created by: EXPRESS->CDL V0.2 Translator
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
  ../Interface/Interface_HArray1OfHAsciiString, ../Standard/Standard_Boolean,
  ../Standard/Standard_Transient, ../Standard/Standard_Integer

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_Person"
discard "forward decl of StepBasic_Person"
type
  Handle_StepBasic_Person* = handle[StepBasic_Person]
  StepBasic_Person* {.importcpp: "StepBasic_Person",
                     header: "StepBasic_Person.hxx", bycopy.} = object of Standard_Transient ##
                                                                                      ## !
                                                                                      ## Returns
                                                                                      ## a
                                                                                      ## Person


proc constructStepBasic_Person*(): StepBasic_Person {.constructor,
    importcpp: "StepBasic_Person(@)", header: "StepBasic_Person.hxx".}
proc Init*(this: var StepBasic_Person; aId: handle[TCollection_HAsciiString];
          hasAlastName: Standard_Boolean;
          aLastName: handle[TCollection_HAsciiString];
          hasAfirstName: Standard_Boolean;
          aFirstName: handle[TCollection_HAsciiString];
          hasAmiddleNames: Standard_Boolean;
          aMiddleNames: handle[Interface_HArray1OfHAsciiString];
          hasAprefixTitles: Standard_Boolean;
          aPrefixTitles: handle[Interface_HArray1OfHAsciiString];
          hasAsuffixTitles: Standard_Boolean;
          aSuffixTitles: handle[Interface_HArray1OfHAsciiString]) {.
    importcpp: "Init", header: "StepBasic_Person.hxx".}
proc SetId*(this: var StepBasic_Person; aId: handle[TCollection_HAsciiString]) {.
    importcpp: "SetId", header: "StepBasic_Person.hxx".}
proc Id*(this: StepBasic_Person): handle[TCollection_HAsciiString] {.noSideEffect,
    importcpp: "Id", header: "StepBasic_Person.hxx".}
proc SetLastName*(this: var StepBasic_Person;
                 aLastName: handle[TCollection_HAsciiString]) {.
    importcpp: "SetLastName", header: "StepBasic_Person.hxx".}
proc UnSetLastName*(this: var StepBasic_Person) {.importcpp: "UnSetLastName",
    header: "StepBasic_Person.hxx".}
proc LastName*(this: StepBasic_Person): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "LastName", header: "StepBasic_Person.hxx".}
proc HasLastName*(this: StepBasic_Person): Standard_Boolean {.noSideEffect,
    importcpp: "HasLastName", header: "StepBasic_Person.hxx".}
proc SetFirstName*(this: var StepBasic_Person;
                  aFirstName: handle[TCollection_HAsciiString]) {.
    importcpp: "SetFirstName", header: "StepBasic_Person.hxx".}
proc UnSetFirstName*(this: var StepBasic_Person) {.importcpp: "UnSetFirstName",
    header: "StepBasic_Person.hxx".}
proc FirstName*(this: StepBasic_Person): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "FirstName", header: "StepBasic_Person.hxx".}
proc HasFirstName*(this: StepBasic_Person): Standard_Boolean {.noSideEffect,
    importcpp: "HasFirstName", header: "StepBasic_Person.hxx".}
proc SetMiddleNames*(this: var StepBasic_Person;
                    aMiddleNames: handle[Interface_HArray1OfHAsciiString]) {.
    importcpp: "SetMiddleNames", header: "StepBasic_Person.hxx".}
proc UnSetMiddleNames*(this: var StepBasic_Person) {.importcpp: "UnSetMiddleNames",
    header: "StepBasic_Person.hxx".}
proc MiddleNames*(this: StepBasic_Person): handle[Interface_HArray1OfHAsciiString] {.
    noSideEffect, importcpp: "MiddleNames", header: "StepBasic_Person.hxx".}
proc HasMiddleNames*(this: StepBasic_Person): Standard_Boolean {.noSideEffect,
    importcpp: "HasMiddleNames", header: "StepBasic_Person.hxx".}
proc MiddleNamesValue*(this: StepBasic_Person; num: Standard_Integer): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "MiddleNamesValue",
                               header: "StepBasic_Person.hxx".}
proc NbMiddleNames*(this: StepBasic_Person): Standard_Integer {.noSideEffect,
    importcpp: "NbMiddleNames", header: "StepBasic_Person.hxx".}
proc SetPrefixTitles*(this: var StepBasic_Person;
                     aPrefixTitles: handle[Interface_HArray1OfHAsciiString]) {.
    importcpp: "SetPrefixTitles", header: "StepBasic_Person.hxx".}
proc UnSetPrefixTitles*(this: var StepBasic_Person) {.
    importcpp: "UnSetPrefixTitles", header: "StepBasic_Person.hxx".}
proc PrefixTitles*(this: StepBasic_Person): handle[Interface_HArray1OfHAsciiString] {.
    noSideEffect, importcpp: "PrefixTitles", header: "StepBasic_Person.hxx".}
proc HasPrefixTitles*(this: StepBasic_Person): Standard_Boolean {.noSideEffect,
    importcpp: "HasPrefixTitles", header: "StepBasic_Person.hxx".}
proc PrefixTitlesValue*(this: StepBasic_Person; num: Standard_Integer): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "PrefixTitlesValue",
                               header: "StepBasic_Person.hxx".}
proc NbPrefixTitles*(this: StepBasic_Person): Standard_Integer {.noSideEffect,
    importcpp: "NbPrefixTitles", header: "StepBasic_Person.hxx".}
proc SetSuffixTitles*(this: var StepBasic_Person;
                     aSuffixTitles: handle[Interface_HArray1OfHAsciiString]) {.
    importcpp: "SetSuffixTitles", header: "StepBasic_Person.hxx".}
proc UnSetSuffixTitles*(this: var StepBasic_Person) {.
    importcpp: "UnSetSuffixTitles", header: "StepBasic_Person.hxx".}
proc SuffixTitles*(this: StepBasic_Person): handle[Interface_HArray1OfHAsciiString] {.
    noSideEffect, importcpp: "SuffixTitles", header: "StepBasic_Person.hxx".}
proc HasSuffixTitles*(this: StepBasic_Person): Standard_Boolean {.noSideEffect,
    importcpp: "HasSuffixTitles", header: "StepBasic_Person.hxx".}
proc SuffixTitlesValue*(this: StepBasic_Person; num: Standard_Integer): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "SuffixTitlesValue",
                               header: "StepBasic_Person.hxx".}
proc NbSuffixTitles*(this: StepBasic_Person): Standard_Integer {.noSideEffect,
    importcpp: "NbSuffixTitles", header: "StepBasic_Person.hxx".}
type
  StepBasic_Personbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepBasic_Person::get_type_name(@)",
                              header: "StepBasic_Person.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepBasic_Person::get_type_descriptor(@)",
    header: "StepBasic_Person.hxx".}
proc DynamicType*(this: StepBasic_Person): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "StepBasic_Person.hxx".}