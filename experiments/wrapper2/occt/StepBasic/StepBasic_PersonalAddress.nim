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
  ../Standard/Standard, ../Standard/Standard_Type, StepBasic_HArray1OfPerson,
  StepBasic_Address, ../Standard/Standard_Boolean, ../Standard/Standard_Integer

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_Person"
discard "forward decl of StepBasic_PersonalAddress"
discard "forward decl of StepBasic_PersonalAddress"
type
  Handle_StepBasic_PersonalAddress* = handle[StepBasic_PersonalAddress]
  StepBasic_PersonalAddress* {.importcpp: "StepBasic_PersonalAddress",
                              header: "StepBasic_PersonalAddress.hxx", bycopy.} = object of StepBasic_Address ##
                                                                                                       ## !
                                                                                                       ## Returns
                                                                                                       ## a
                                                                                                       ## PersonalAddress


proc constructStepBasic_PersonalAddress*(): StepBasic_PersonalAddress {.
    constructor, importcpp: "StepBasic_PersonalAddress(@)",
    header: "StepBasic_PersonalAddress.hxx".}
proc Init*(this: var StepBasic_PersonalAddress;
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
          aPeople: handle[StepBasic_HArray1OfPerson];
          aDescription: handle[TCollection_HAsciiString]) {.importcpp: "Init",
    header: "StepBasic_PersonalAddress.hxx".}
proc SetPeople*(this: var StepBasic_PersonalAddress;
               aPeople: handle[StepBasic_HArray1OfPerson]) {.
    importcpp: "SetPeople", header: "StepBasic_PersonalAddress.hxx".}
proc People*(this: StepBasic_PersonalAddress): handle[StepBasic_HArray1OfPerson] {.
    noSideEffect, importcpp: "People", header: "StepBasic_PersonalAddress.hxx".}
proc PeopleValue*(this: StepBasic_PersonalAddress; num: Standard_Integer): handle[
    StepBasic_Person] {.noSideEffect, importcpp: "PeopleValue",
                       header: "StepBasic_PersonalAddress.hxx".}
proc NbPeople*(this: StepBasic_PersonalAddress): Standard_Integer {.noSideEffect,
    importcpp: "NbPeople", header: "StepBasic_PersonalAddress.hxx".}
proc SetDescription*(this: var StepBasic_PersonalAddress;
                    aDescription: handle[TCollection_HAsciiString]) {.
    importcpp: "SetDescription", header: "StepBasic_PersonalAddress.hxx".}
proc Description*(this: StepBasic_PersonalAddress): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "Description", header: "StepBasic_PersonalAddress.hxx".}
type
  StepBasic_PersonalAddressbase_type* = StepBasic_Address

proc get_type_name*(): cstring {.importcpp: "StepBasic_PersonalAddress::get_type_name(@)",
                              header: "StepBasic_PersonalAddress.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepBasic_PersonalAddress::get_type_descriptor(@)",
    header: "StepBasic_PersonalAddress.hxx".}
proc DynamicType*(this: StepBasic_PersonalAddress): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepBasic_PersonalAddress.hxx".}