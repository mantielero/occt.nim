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
discard "forward decl of StepBasic_Organization"
discard "forward decl of StepBasic_OrganizationalAddress"
discard "forward decl of StepBasic_OrganizationalAddress"
type
  HandleC1C1* = Handle[StepBasicOrganizationalAddress]
  StepBasicOrganizationalAddress* {.importcpp: "StepBasic_OrganizationalAddress", header: "StepBasic_OrganizationalAddress.hxx",
                                   bycopy.} = object of StepBasicAddress ## ! Returns a
                                                                    ## OrganizationalAddress


proc constructStepBasicOrganizationalAddress*(): StepBasicOrganizationalAddress {.
    constructor, importcpp: "StepBasic_OrganizationalAddress(@)",
    header: "StepBasic_OrganizationalAddress.hxx".}
proc init*(this: var StepBasicOrganizationalAddress;
          hasAinternalLocation: StandardBoolean;
          aInternalLocation: Handle[TCollectionHAsciiString];
          hasAstreetNumber: StandardBoolean;
          aStreetNumber: Handle[TCollectionHAsciiString];
          hasAstreet: StandardBoolean; aStreet: Handle[TCollectionHAsciiString];
          hasApostalBox: StandardBoolean;
          aPostalBox: Handle[TCollectionHAsciiString]; hasAtown: StandardBoolean;
          aTown: Handle[TCollectionHAsciiString]; hasAregion: StandardBoolean;
          aRegion: Handle[TCollectionHAsciiString];
          hasApostalCode: StandardBoolean;
          aPostalCode: Handle[TCollectionHAsciiString];
          hasAcountry: StandardBoolean; aCountry: Handle[TCollectionHAsciiString];
          hasAfacsimileNumber: StandardBoolean;
          aFacsimileNumber: Handle[TCollectionHAsciiString];
          hasAtelephoneNumber: StandardBoolean;
          aTelephoneNumber: Handle[TCollectionHAsciiString];
          hasAelectronicMailAddress: StandardBoolean;
          aElectronicMailAddress: Handle[TCollectionHAsciiString];
          hasAtelexNumber: StandardBoolean;
          aTelexNumber: Handle[TCollectionHAsciiString];
          aOrganizations: Handle[StepBasicHArray1OfOrganization];
          aDescription: Handle[TCollectionHAsciiString]) {.importcpp: "Init",
    header: "StepBasic_OrganizationalAddress.hxx".}
proc setOrganizations*(this: var StepBasicOrganizationalAddress;
                      aOrganizations: Handle[StepBasicHArray1OfOrganization]) {.
    importcpp: "SetOrganizations", header: "StepBasic_OrganizationalAddress.hxx".}
proc organizations*(this: StepBasicOrganizationalAddress): Handle[
    StepBasicHArray1OfOrganization] {.noSideEffect, importcpp: "Organizations", header: "StepBasic_OrganizationalAddress.hxx".}
proc organizationsValue*(this: StepBasicOrganizationalAddress; num: int): Handle[
    StepBasicOrganization] {.noSideEffect, importcpp: "OrganizationsValue",
                            header: "StepBasic_OrganizationalAddress.hxx".}
proc nbOrganizations*(this: StepBasicOrganizationalAddress): int {.noSideEffect,
    importcpp: "NbOrganizations", header: "StepBasic_OrganizationalAddress.hxx".}
proc setDescription*(this: var StepBasicOrganizationalAddress;
                    aDescription: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetDescription", header: "StepBasic_OrganizationalAddress.hxx".}
proc description*(this: StepBasicOrganizationalAddress): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "Description",
                              header: "StepBasic_OrganizationalAddress.hxx".}
type
  StepBasicOrganizationalAddressbaseType* = StepBasicAddress

proc getTypeName*(): cstring {.importcpp: "StepBasic_OrganizationalAddress::get_type_name(@)",
                            header: "StepBasic_OrganizationalAddress.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepBasic_OrganizationalAddress::get_type_descriptor(@)",
    header: "StepBasic_OrganizationalAddress.hxx".}
proc dynamicType*(this: StepBasicOrganizationalAddress): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepBasic_OrganizationalAddress.hxx".}