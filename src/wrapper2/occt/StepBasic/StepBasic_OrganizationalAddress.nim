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
  StepBasic_HArray1OfOrganization, StepBasic_Address,
  ../Standard/Standard_Boolean, ../Standard/Standard_Integer

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_Organization"
discard "forward decl of StepBasic_OrganizationalAddress"
discard "forward decl of StepBasic_OrganizationalAddress"
type
  Handle_StepBasic_OrganizationalAddress* = handle[StepBasic_OrganizationalAddress]
  StepBasic_OrganizationalAddress* {.importcpp: "StepBasic_OrganizationalAddress", header: "StepBasic_OrganizationalAddress.hxx",
                                    bycopy.} = object of StepBasic_Address ## ! Returns a
                                                                      ## OrganizationalAddress


proc constructStepBasic_OrganizationalAddress*(): StepBasic_OrganizationalAddress {.
    constructor, importcpp: "StepBasic_OrganizationalAddress(@)",
    header: "StepBasic_OrganizationalAddress.hxx".}
proc Init*(this: var StepBasic_OrganizationalAddress;
          hasAinternalLocation: Standard_Boolean;
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
          aTelexNumber: handle[TCollection_HAsciiString];
          aOrganizations: handle[StepBasic_HArray1OfOrganization];
          aDescription: handle[TCollection_HAsciiString]) {.importcpp: "Init",
    header: "StepBasic_OrganizationalAddress.hxx".}
proc SetOrganizations*(this: var StepBasic_OrganizationalAddress;
                      aOrganizations: handle[StepBasic_HArray1OfOrganization]) {.
    importcpp: "SetOrganizations", header: "StepBasic_OrganizationalAddress.hxx".}
proc Organizations*(this: StepBasic_OrganizationalAddress): handle[
    StepBasic_HArray1OfOrganization] {.noSideEffect, importcpp: "Organizations", header: "StepBasic_OrganizationalAddress.hxx".}
proc OrganizationsValue*(this: StepBasic_OrganizationalAddress;
                        num: Standard_Integer): handle[StepBasic_Organization] {.
    noSideEffect, importcpp: "OrganizationsValue",
    header: "StepBasic_OrganizationalAddress.hxx".}
proc NbOrganizations*(this: StepBasic_OrganizationalAddress): Standard_Integer {.
    noSideEffect, importcpp: "NbOrganizations",
    header: "StepBasic_OrganizationalAddress.hxx".}
proc SetDescription*(this: var StepBasic_OrganizationalAddress;
                    aDescription: handle[TCollection_HAsciiString]) {.
    importcpp: "SetDescription", header: "StepBasic_OrganizationalAddress.hxx".}
proc Description*(this: StepBasic_OrganizationalAddress): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "Description",
                               header: "StepBasic_OrganizationalAddress.hxx".}
type
  StepBasic_OrganizationalAddressbase_type* = StepBasic_Address

proc get_type_name*(): cstring {.importcpp: "StepBasic_OrganizationalAddress::get_type_name(@)",
                              header: "StepBasic_OrganizationalAddress.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepBasic_OrganizationalAddress::get_type_descriptor(@)",
    header: "StepBasic_OrganizationalAddress.hxx".}
proc DynamicType*(this: StepBasic_OrganizationalAddress): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepBasic_OrganizationalAddress.hxx".}