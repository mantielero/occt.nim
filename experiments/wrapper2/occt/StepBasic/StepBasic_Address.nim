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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Boolean,
  ../Standard/Standard_Transient

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_Address"
discard "forward decl of StepBasic_Address"
type
  Handle_StepBasic_Address* = handle[StepBasic_Address]
  StepBasic_Address* {.importcpp: "StepBasic_Address",
                      header: "StepBasic_Address.hxx", bycopy.} = object of Standard_Transient ##
                                                                                        ## !
                                                                                        ## Returns
                                                                                        ## a
                                                                                        ## Address


proc constructStepBasic_Address*(): StepBasic_Address {.constructor,
    importcpp: "StepBasic_Address(@)", header: "StepBasic_Address.hxx".}
proc Init*(this: var StepBasic_Address; hasAinternalLocation: Standard_Boolean;
          aInternalLocation: handle[TCollection_HAsciiString];
          hasAstreetNumber: Standard_Boolean;
          aStreetNumber: handle[TCollection_HAsciiString];
          hasAstreet: Standard_Boolean; aStreet: handle[TCollection_HAsciiString];
          hasApostalBox: Standard_Boolean;
          aPostalBox: handle[TCollection_HAsciiString];
          hasAtown: Standard_Boolean; aTown: handle[TCollection_HAsciiString];
          hasAregion: Standard_Boolean; aRegion: handle[TCollection_HAsciiString];
          hasApostalCode: Standard_Boolean;
          aPostalCode: handle[TCollection_HAsciiString];
          hasAcountry: Standard_Boolean;
          aCountry: handle[TCollection_HAsciiString];
          hasAfacsimileNumber: Standard_Boolean;
          aFacsimileNumber: handle[TCollection_HAsciiString];
          hasAtelephoneNumber: Standard_Boolean;
          aTelephoneNumber: handle[TCollection_HAsciiString];
          hasAelectronicMailAddress: Standard_Boolean;
          aElectronicMailAddress: handle[TCollection_HAsciiString];
          hasAtelexNumber: Standard_Boolean;
          aTelexNumber: handle[TCollection_HAsciiString]) {.importcpp: "Init",
    header: "StepBasic_Address.hxx".}
proc SetInternalLocation*(this: var StepBasic_Address;
                         aInternalLocation: handle[TCollection_HAsciiString]) {.
    importcpp: "SetInternalLocation", header: "StepBasic_Address.hxx".}
proc UnSetInternalLocation*(this: var StepBasic_Address) {.
    importcpp: "UnSetInternalLocation", header: "StepBasic_Address.hxx".}
proc InternalLocation*(this: StepBasic_Address): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "InternalLocation", header: "StepBasic_Address.hxx".}
proc HasInternalLocation*(this: StepBasic_Address): Standard_Boolean {.noSideEffect,
    importcpp: "HasInternalLocation", header: "StepBasic_Address.hxx".}
proc SetStreetNumber*(this: var StepBasic_Address;
                     aStreetNumber: handle[TCollection_HAsciiString]) {.
    importcpp: "SetStreetNumber", header: "StepBasic_Address.hxx".}
proc UnSetStreetNumber*(this: var StepBasic_Address) {.
    importcpp: "UnSetStreetNumber", header: "StepBasic_Address.hxx".}
proc StreetNumber*(this: StepBasic_Address): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "StreetNumber", header: "StepBasic_Address.hxx".}
proc HasStreetNumber*(this: StepBasic_Address): Standard_Boolean {.noSideEffect,
    importcpp: "HasStreetNumber", header: "StepBasic_Address.hxx".}
proc SetStreet*(this: var StepBasic_Address;
               aStreet: handle[TCollection_HAsciiString]) {.
    importcpp: "SetStreet", header: "StepBasic_Address.hxx".}
proc UnSetStreet*(this: var StepBasic_Address) {.importcpp: "UnSetStreet",
    header: "StepBasic_Address.hxx".}
proc Street*(this: StepBasic_Address): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "Street", header: "StepBasic_Address.hxx".}
proc HasStreet*(this: StepBasic_Address): Standard_Boolean {.noSideEffect,
    importcpp: "HasStreet", header: "StepBasic_Address.hxx".}
proc SetPostalBox*(this: var StepBasic_Address;
                  aPostalBox: handle[TCollection_HAsciiString]) {.
    importcpp: "SetPostalBox", header: "StepBasic_Address.hxx".}
proc UnSetPostalBox*(this: var StepBasic_Address) {.importcpp: "UnSetPostalBox",
    header: "StepBasic_Address.hxx".}
proc PostalBox*(this: StepBasic_Address): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "PostalBox", header: "StepBasic_Address.hxx".}
proc HasPostalBox*(this: StepBasic_Address): Standard_Boolean {.noSideEffect,
    importcpp: "HasPostalBox", header: "StepBasic_Address.hxx".}
proc SetTown*(this: var StepBasic_Address; aTown: handle[TCollection_HAsciiString]) {.
    importcpp: "SetTown", header: "StepBasic_Address.hxx".}
proc UnSetTown*(this: var StepBasic_Address) {.importcpp: "UnSetTown",
    header: "StepBasic_Address.hxx".}
proc Town*(this: StepBasic_Address): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "Town", header: "StepBasic_Address.hxx".}
proc HasTown*(this: StepBasic_Address): Standard_Boolean {.noSideEffect,
    importcpp: "HasTown", header: "StepBasic_Address.hxx".}
proc SetRegion*(this: var StepBasic_Address;
               aRegion: handle[TCollection_HAsciiString]) {.
    importcpp: "SetRegion", header: "StepBasic_Address.hxx".}
proc UnSetRegion*(this: var StepBasic_Address) {.importcpp: "UnSetRegion",
    header: "StepBasic_Address.hxx".}
proc Region*(this: StepBasic_Address): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "Region", header: "StepBasic_Address.hxx".}
proc HasRegion*(this: StepBasic_Address): Standard_Boolean {.noSideEffect,
    importcpp: "HasRegion", header: "StepBasic_Address.hxx".}
proc SetPostalCode*(this: var StepBasic_Address;
                   aPostalCode: handle[TCollection_HAsciiString]) {.
    importcpp: "SetPostalCode", header: "StepBasic_Address.hxx".}
proc UnSetPostalCode*(this: var StepBasic_Address) {.importcpp: "UnSetPostalCode",
    header: "StepBasic_Address.hxx".}
proc PostalCode*(this: StepBasic_Address): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "PostalCode", header: "StepBasic_Address.hxx".}
proc HasPostalCode*(this: StepBasic_Address): Standard_Boolean {.noSideEffect,
    importcpp: "HasPostalCode", header: "StepBasic_Address.hxx".}
proc SetCountry*(this: var StepBasic_Address;
                aCountry: handle[TCollection_HAsciiString]) {.
    importcpp: "SetCountry", header: "StepBasic_Address.hxx".}
proc UnSetCountry*(this: var StepBasic_Address) {.importcpp: "UnSetCountry",
    header: "StepBasic_Address.hxx".}
proc Country*(this: StepBasic_Address): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "Country", header: "StepBasic_Address.hxx".}
proc HasCountry*(this: StepBasic_Address): Standard_Boolean {.noSideEffect,
    importcpp: "HasCountry", header: "StepBasic_Address.hxx".}
proc SetFacsimileNumber*(this: var StepBasic_Address;
                        aFacsimileNumber: handle[TCollection_HAsciiString]) {.
    importcpp: "SetFacsimileNumber", header: "StepBasic_Address.hxx".}
proc UnSetFacsimileNumber*(this: var StepBasic_Address) {.
    importcpp: "UnSetFacsimileNumber", header: "StepBasic_Address.hxx".}
proc FacsimileNumber*(this: StepBasic_Address): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "FacsimileNumber", header: "StepBasic_Address.hxx".}
proc HasFacsimileNumber*(this: StepBasic_Address): Standard_Boolean {.noSideEffect,
    importcpp: "HasFacsimileNumber", header: "StepBasic_Address.hxx".}
proc SetTelephoneNumber*(this: var StepBasic_Address;
                        aTelephoneNumber: handle[TCollection_HAsciiString]) {.
    importcpp: "SetTelephoneNumber", header: "StepBasic_Address.hxx".}
proc UnSetTelephoneNumber*(this: var StepBasic_Address) {.
    importcpp: "UnSetTelephoneNumber", header: "StepBasic_Address.hxx".}
proc TelephoneNumber*(this: StepBasic_Address): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "TelephoneNumber", header: "StepBasic_Address.hxx".}
proc HasTelephoneNumber*(this: StepBasic_Address): Standard_Boolean {.noSideEffect,
    importcpp: "HasTelephoneNumber", header: "StepBasic_Address.hxx".}
proc SetElectronicMailAddress*(this: var StepBasic_Address; aElectronicMailAddress: handle[
    TCollection_HAsciiString]) {.importcpp: "SetElectronicMailAddress",
                                header: "StepBasic_Address.hxx".}
proc UnSetElectronicMailAddress*(this: var StepBasic_Address) {.
    importcpp: "UnSetElectronicMailAddress", header: "StepBasic_Address.hxx".}
proc ElectronicMailAddress*(this: StepBasic_Address): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "ElectronicMailAddress",
                               header: "StepBasic_Address.hxx".}
proc HasElectronicMailAddress*(this: StepBasic_Address): Standard_Boolean {.
    noSideEffect, importcpp: "HasElectronicMailAddress",
    header: "StepBasic_Address.hxx".}
proc SetTelexNumber*(this: var StepBasic_Address;
                    aTelexNumber: handle[TCollection_HAsciiString]) {.
    importcpp: "SetTelexNumber", header: "StepBasic_Address.hxx".}
proc UnSetTelexNumber*(this: var StepBasic_Address) {.importcpp: "UnSetTelexNumber",
    header: "StepBasic_Address.hxx".}
proc TelexNumber*(this: StepBasic_Address): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "TelexNumber", header: "StepBasic_Address.hxx".}
proc HasTelexNumber*(this: StepBasic_Address): Standard_Boolean {.noSideEffect,
    importcpp: "HasTelexNumber", header: "StepBasic_Address.hxx".}
type
  StepBasic_Addressbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepBasic_Address::get_type_name(@)",
                              header: "StepBasic_Address.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepBasic_Address::get_type_descriptor(@)",
    header: "StepBasic_Address.hxx".}
proc DynamicType*(this: StepBasic_Address): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "StepBasic_Address.hxx".}