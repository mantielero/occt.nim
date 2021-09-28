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
discard "forward decl of StepBasic_PersonalAddress"
discard "forward decl of StepBasic_PersonalAddress"
type
  HandleC1C1* = Handle[StepBasicPersonalAddress]
  StepBasicPersonalAddress* {.importcpp: "StepBasic_PersonalAddress",
                             header: "StepBasic_PersonalAddress.hxx", bycopy.} = object of StepBasicAddress ##
                                                                                                     ## !
                                                                                                     ## Returns
                                                                                                     ## a
                                                                                                     ## PersonalAddress


proc constructStepBasicPersonalAddress*(): StepBasicPersonalAddress {.constructor,
    importcpp: "StepBasic_PersonalAddress(@)",
    header: "StepBasic_PersonalAddress.hxx".}
proc init*(this: var StepBasicPersonalAddress; hasAinternalLocation: bool;
          aInternalLocation: Handle[TCollectionHAsciiString];
          hasAstreetNumber: bool; aStreetNumber: Handle[TCollectionHAsciiString];
          hasAstreet: bool; aStreet: Handle[TCollectionHAsciiString];
          hasApostalBox: bool; aPostalBox: Handle[TCollectionHAsciiString];
          hasAtown: bool; aTown: Handle[TCollectionHAsciiString]; hasAregion: bool;
          aRegion: Handle[TCollectionHAsciiString]; hasApostalCode: bool;
          aPostalCode: Handle[TCollectionHAsciiString]; hasAcountry: bool;
          aCountry: Handle[TCollectionHAsciiString]; hasAfacsimileNumber: bool;
          aFacsimileNumber: Handle[TCollectionHAsciiString];
          hasAtelephoneNumber: bool;
          aTelephoneNumber: Handle[TCollectionHAsciiString];
          hasAelectronicMailAddress: bool;
          aElectronicMailAddress: Handle[TCollectionHAsciiString];
          hasAtelexNumber: bool; aTelexNumber: Handle[TCollectionHAsciiString];
          aPeople: Handle[StepBasicHArray1OfPerson];
          aDescription: Handle[TCollectionHAsciiString]) {.importcpp: "Init",
    header: "StepBasic_PersonalAddress.hxx".}
proc setPeople*(this: var StepBasicPersonalAddress;
               aPeople: Handle[StepBasicHArray1OfPerson]) {.
    importcpp: "SetPeople", header: "StepBasic_PersonalAddress.hxx".}
proc people*(this: StepBasicPersonalAddress): Handle[StepBasicHArray1OfPerson] {.
    noSideEffect, importcpp: "People", header: "StepBasic_PersonalAddress.hxx".}
proc peopleValue*(this: StepBasicPersonalAddress; num: cint): Handle[StepBasicPerson] {.
    noSideEffect, importcpp: "PeopleValue", header: "StepBasic_PersonalAddress.hxx".}
proc nbPeople*(this: StepBasicPersonalAddress): cint {.noSideEffect,
    importcpp: "NbPeople", header: "StepBasic_PersonalAddress.hxx".}
proc setDescription*(this: var StepBasicPersonalAddress;
                    aDescription: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetDescription", header: "StepBasic_PersonalAddress.hxx".}
proc description*(this: StepBasicPersonalAddress): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "Description", header: "StepBasic_PersonalAddress.hxx".}
type
  StepBasicPersonalAddressbaseType* = StepBasicAddress

proc getTypeName*(): cstring {.importcpp: "StepBasic_PersonalAddress::get_type_name(@)",
                            header: "StepBasic_PersonalAddress.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepBasic_PersonalAddress::get_type_descriptor(@)",
    header: "StepBasic_PersonalAddress.hxx".}
proc dynamicType*(this: StepBasicPersonalAddress): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "StepBasic_PersonalAddress.hxx".}

























