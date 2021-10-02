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

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_Person"
discard "forward decl of StepBasic_Person"
type
  HandleC1C1* = Handle[StepBasicPerson]
  StepBasicPerson* {.importcpp: "StepBasic_Person", header: "StepBasic_Person.hxx",
                    bycopy.} = object of StandardTransient ## ! Returns a Person


proc constructStepBasicPerson*(): StepBasicPerson {.constructor,
    importcpp: "StepBasic_Person(@)", header: "StepBasic_Person.hxx".}
proc init*(this: var StepBasicPerson; aId: Handle[TCollectionHAsciiString];
          hasAlastName: StandardBoolean;
          aLastName: Handle[TCollectionHAsciiString];
          hasAfirstName: StandardBoolean;
          aFirstName: Handle[TCollectionHAsciiString];
          hasAmiddleNames: StandardBoolean;
          aMiddleNames: Handle[InterfaceHArray1OfHAsciiString];
          hasAprefixTitles: StandardBoolean;
          aPrefixTitles: Handle[InterfaceHArray1OfHAsciiString];
          hasAsuffixTitles: StandardBoolean;
          aSuffixTitles: Handle[InterfaceHArray1OfHAsciiString]) {.
    importcpp: "Init", header: "StepBasic_Person.hxx".}
proc setId*(this: var StepBasicPerson; aId: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetId", header: "StepBasic_Person.hxx".}
proc id*(this: StepBasicPerson): Handle[TCollectionHAsciiString] {.noSideEffect,
    importcpp: "Id", header: "StepBasic_Person.hxx".}
proc setLastName*(this: var StepBasicPerson;
                 aLastName: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetLastName", header: "StepBasic_Person.hxx".}
proc unSetLastName*(this: var StepBasicPerson) {.importcpp: "UnSetLastName",
    header: "StepBasic_Person.hxx".}
proc lastName*(this: StepBasicPerson): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "LastName", header: "StepBasic_Person.hxx".}
proc hasLastName*(this: StepBasicPerson): StandardBoolean {.noSideEffect,
    importcpp: "HasLastName", header: "StepBasic_Person.hxx".}
proc setFirstName*(this: var StepBasicPerson;
                  aFirstName: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetFirstName", header: "StepBasic_Person.hxx".}
proc unSetFirstName*(this: var StepBasicPerson) {.importcpp: "UnSetFirstName",
    header: "StepBasic_Person.hxx".}
proc firstName*(this: StepBasicPerson): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "FirstName", header: "StepBasic_Person.hxx".}
proc hasFirstName*(this: StepBasicPerson): StandardBoolean {.noSideEffect,
    importcpp: "HasFirstName", header: "StepBasic_Person.hxx".}
proc setMiddleNames*(this: var StepBasicPerson;
                    aMiddleNames: Handle[InterfaceHArray1OfHAsciiString]) {.
    importcpp: "SetMiddleNames", header: "StepBasic_Person.hxx".}
proc unSetMiddleNames*(this: var StepBasicPerson) {.importcpp: "UnSetMiddleNames",
    header: "StepBasic_Person.hxx".}
proc middleNames*(this: StepBasicPerson): Handle[InterfaceHArray1OfHAsciiString] {.
    noSideEffect, importcpp: "MiddleNames", header: "StepBasic_Person.hxx".}
proc hasMiddleNames*(this: StepBasicPerson): StandardBoolean {.noSideEffect,
    importcpp: "HasMiddleNames", header: "StepBasic_Person.hxx".}
proc middleNamesValue*(this: StepBasicPerson; num: int): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "MiddleNamesValue",
                              header: "StepBasic_Person.hxx".}
proc nbMiddleNames*(this: StepBasicPerson): int {.noSideEffect,
    importcpp: "NbMiddleNames", header: "StepBasic_Person.hxx".}
proc setPrefixTitles*(this: var StepBasicPerson;
                     aPrefixTitles: Handle[InterfaceHArray1OfHAsciiString]) {.
    importcpp: "SetPrefixTitles", header: "StepBasic_Person.hxx".}
proc unSetPrefixTitles*(this: var StepBasicPerson) {.importcpp: "UnSetPrefixTitles",
    header: "StepBasic_Person.hxx".}
proc prefixTitles*(this: StepBasicPerson): Handle[InterfaceHArray1OfHAsciiString] {.
    noSideEffect, importcpp: "PrefixTitles", header: "StepBasic_Person.hxx".}
proc hasPrefixTitles*(this: StepBasicPerson): StandardBoolean {.noSideEffect,
    importcpp: "HasPrefixTitles", header: "StepBasic_Person.hxx".}
proc prefixTitlesValue*(this: StepBasicPerson; num: int): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "PrefixTitlesValue",
                              header: "StepBasic_Person.hxx".}
proc nbPrefixTitles*(this: StepBasicPerson): int {.noSideEffect,
    importcpp: "NbPrefixTitles", header: "StepBasic_Person.hxx".}
proc setSuffixTitles*(this: var StepBasicPerson;
                     aSuffixTitles: Handle[InterfaceHArray1OfHAsciiString]) {.
    importcpp: "SetSuffixTitles", header: "StepBasic_Person.hxx".}
proc unSetSuffixTitles*(this: var StepBasicPerson) {.importcpp: "UnSetSuffixTitles",
    header: "StepBasic_Person.hxx".}
proc suffixTitles*(this: StepBasicPerson): Handle[InterfaceHArray1OfHAsciiString] {.
    noSideEffect, importcpp: "SuffixTitles", header: "StepBasic_Person.hxx".}
proc hasSuffixTitles*(this: StepBasicPerson): StandardBoolean {.noSideEffect,
    importcpp: "HasSuffixTitles", header: "StepBasic_Person.hxx".}
proc suffixTitlesValue*(this: StepBasicPerson; num: int): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "SuffixTitlesValue",
                              header: "StepBasic_Person.hxx".}
proc nbSuffixTitles*(this: StepBasicPerson): int {.noSideEffect,
    importcpp: "NbSuffixTitles", header: "StepBasic_Person.hxx".}
type
  StepBasicPersonbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepBasic_Person::get_type_name(@)",
                            header: "StepBasic_Person.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepBasic_Person::get_type_descriptor(@)",
    header: "StepBasic_Person.hxx".}
proc dynamicType*(this: StepBasicPerson): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepBasic_Person.hxx".}