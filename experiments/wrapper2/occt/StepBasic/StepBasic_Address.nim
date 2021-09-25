##  Created on: 1995-12-04
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
discard "forward decl of StepBasic_Address"
discard "forward decl of StepBasic_Address"
type
  HandleStepBasicAddress* = Handle[StepBasicAddress]
  StepBasicAddress* {.importcpp: "StepBasic_Address",
                     header: "StepBasic_Address.hxx", bycopy.} = object of StandardTransient ##
                                                                                      ## !
                                                                                      ## Returns
                                                                                      ## a
                                                                                      ## Address


proc constructStepBasicAddress*(): StepBasicAddress {.constructor,
    importcpp: "StepBasic_Address(@)", header: "StepBasic_Address.hxx".}
proc init*(this: var StepBasicAddress; hasAinternalLocation: bool;
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
          hasAtelexNumber: bool; aTelexNumber: Handle[TCollectionHAsciiString]) {.
    importcpp: "Init", header: "StepBasic_Address.hxx".}
proc setInternalLocation*(this: var StepBasicAddress;
                         aInternalLocation: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetInternalLocation", header: "StepBasic_Address.hxx".}
proc unSetInternalLocation*(this: var StepBasicAddress) {.
    importcpp: "UnSetInternalLocation", header: "StepBasic_Address.hxx".}
proc internalLocation*(this: StepBasicAddress): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "InternalLocation", header: "StepBasic_Address.hxx".}
proc hasInternalLocation*(this: StepBasicAddress): bool {.noSideEffect,
    importcpp: "HasInternalLocation", header: "StepBasic_Address.hxx".}
proc setStreetNumber*(this: var StepBasicAddress;
                     aStreetNumber: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetStreetNumber", header: "StepBasic_Address.hxx".}
proc unSetStreetNumber*(this: var StepBasicAddress) {.
    importcpp: "UnSetStreetNumber", header: "StepBasic_Address.hxx".}
proc streetNumber*(this: StepBasicAddress): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "StreetNumber", header: "StepBasic_Address.hxx".}
proc hasStreetNumber*(this: StepBasicAddress): bool {.noSideEffect,
    importcpp: "HasStreetNumber", header: "StepBasic_Address.hxx".}
proc setStreet*(this: var StepBasicAddress; aStreet: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetStreet", header: "StepBasic_Address.hxx".}
proc unSetStreet*(this: var StepBasicAddress) {.importcpp: "UnSetStreet",
    header: "StepBasic_Address.hxx".}
proc street*(this: StepBasicAddress): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "Street", header: "StepBasic_Address.hxx".}
proc hasStreet*(this: StepBasicAddress): bool {.noSideEffect, importcpp: "HasStreet",
    header: "StepBasic_Address.hxx".}
proc setPostalBox*(this: var StepBasicAddress;
                  aPostalBox: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetPostalBox", header: "StepBasic_Address.hxx".}
proc unSetPostalBox*(this: var StepBasicAddress) {.importcpp: "UnSetPostalBox",
    header: "StepBasic_Address.hxx".}
proc postalBox*(this: StepBasicAddress): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "PostalBox", header: "StepBasic_Address.hxx".}
proc hasPostalBox*(this: StepBasicAddress): bool {.noSideEffect,
    importcpp: "HasPostalBox", header: "StepBasic_Address.hxx".}
proc setTown*(this: var StepBasicAddress; aTown: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetTown", header: "StepBasic_Address.hxx".}
proc unSetTown*(this: var StepBasicAddress) {.importcpp: "UnSetTown",
    header: "StepBasic_Address.hxx".}
proc town*(this: StepBasicAddress): Handle[TCollectionHAsciiString] {.noSideEffect,
    importcpp: "Town", header: "StepBasic_Address.hxx".}
proc hasTown*(this: StepBasicAddress): bool {.noSideEffect, importcpp: "HasTown",
    header: "StepBasic_Address.hxx".}
proc setRegion*(this: var StepBasicAddress; aRegion: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetRegion", header: "StepBasic_Address.hxx".}
proc unSetRegion*(this: var StepBasicAddress) {.importcpp: "UnSetRegion",
    header: "StepBasic_Address.hxx".}
proc region*(this: StepBasicAddress): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "Region", header: "StepBasic_Address.hxx".}
proc hasRegion*(this: StepBasicAddress): bool {.noSideEffect, importcpp: "HasRegion",
    header: "StepBasic_Address.hxx".}
proc setPostalCode*(this: var StepBasicAddress;
                   aPostalCode: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetPostalCode", header: "StepBasic_Address.hxx".}
proc unSetPostalCode*(this: var StepBasicAddress) {.importcpp: "UnSetPostalCode",
    header: "StepBasic_Address.hxx".}
proc postalCode*(this: StepBasicAddress): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "PostalCode", header: "StepBasic_Address.hxx".}
proc hasPostalCode*(this: StepBasicAddress): bool {.noSideEffect,
    importcpp: "HasPostalCode", header: "StepBasic_Address.hxx".}
proc setCountry*(this: var StepBasicAddress;
                aCountry: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetCountry", header: "StepBasic_Address.hxx".}
proc unSetCountry*(this: var StepBasicAddress) {.importcpp: "UnSetCountry",
    header: "StepBasic_Address.hxx".}
proc country*(this: StepBasicAddress): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "Country", header: "StepBasic_Address.hxx".}
proc hasCountry*(this: StepBasicAddress): bool {.noSideEffect,
    importcpp: "HasCountry", header: "StepBasic_Address.hxx".}
proc setFacsimileNumber*(this: var StepBasicAddress;
                        aFacsimileNumber: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetFacsimileNumber", header: "StepBasic_Address.hxx".}
proc unSetFacsimileNumber*(this: var StepBasicAddress) {.
    importcpp: "UnSetFacsimileNumber", header: "StepBasic_Address.hxx".}
proc facsimileNumber*(this: StepBasicAddress): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "FacsimileNumber", header: "StepBasic_Address.hxx".}
proc hasFacsimileNumber*(this: StepBasicAddress): bool {.noSideEffect,
    importcpp: "HasFacsimileNumber", header: "StepBasic_Address.hxx".}
proc setTelephoneNumber*(this: var StepBasicAddress;
                        aTelephoneNumber: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetTelephoneNumber", header: "StepBasic_Address.hxx".}
proc unSetTelephoneNumber*(this: var StepBasicAddress) {.
    importcpp: "UnSetTelephoneNumber", header: "StepBasic_Address.hxx".}
proc telephoneNumber*(this: StepBasicAddress): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "TelephoneNumber", header: "StepBasic_Address.hxx".}
proc hasTelephoneNumber*(this: StepBasicAddress): bool {.noSideEffect,
    importcpp: "HasTelephoneNumber", header: "StepBasic_Address.hxx".}
proc setElectronicMailAddress*(this: var StepBasicAddress; aElectronicMailAddress: Handle[
    TCollectionHAsciiString]) {.importcpp: "SetElectronicMailAddress",
                               header: "StepBasic_Address.hxx".}
proc unSetElectronicMailAddress*(this: var StepBasicAddress) {.
    importcpp: "UnSetElectronicMailAddress", header: "StepBasic_Address.hxx".}
proc electronicMailAddress*(this: StepBasicAddress): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "ElectronicMailAddress",
    header: "StepBasic_Address.hxx".}
proc hasElectronicMailAddress*(this: StepBasicAddress): bool {.noSideEffect,
    importcpp: "HasElectronicMailAddress", header: "StepBasic_Address.hxx".}
proc setTelexNumber*(this: var StepBasicAddress;
                    aTelexNumber: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetTelexNumber", header: "StepBasic_Address.hxx".}
proc unSetTelexNumber*(this: var StepBasicAddress) {.importcpp: "UnSetTelexNumber",
    header: "StepBasic_Address.hxx".}
proc telexNumber*(this: StepBasicAddress): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "TelexNumber", header: "StepBasic_Address.hxx".}
proc hasTelexNumber*(this: StepBasicAddress): bool {.noSideEffect,
    importcpp: "HasTelexNumber", header: "StepBasic_Address.hxx".}
type
  StepBasicAddressbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepBasic_Address::get_type_name(@)",
                            header: "StepBasic_Address.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepBasic_Address::get_type_descriptor(@)",
    header: "StepBasic_Address.hxx".}
proc dynamicType*(this: StepBasicAddress): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepBasic_Address.hxx".}
