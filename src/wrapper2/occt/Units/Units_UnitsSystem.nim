##  Created on: 1993-10-22
##  Created by: Gilles DEBARBOUILLE
##  Copyright (c) 1993-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, Units_QuantitiesSequence,
  ../TColStd/TColStd_HSequenceOfInteger, ../Standard/Standard_Transient,
  ../Standard/Standard_CString, ../Standard/Standard_Boolean,
  ../Standard/Standard_Real

discard "forward decl of Units_NoSuchUnit"
discard "forward decl of Units_NoSuchType"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of Units_UnitsSystem"
discard "forward decl of Units_UnitsSystem"
type
  Handle_Units_UnitsSystem* = handle[Units_UnitsSystem]

## ! This class  allows  the  user  to  define his  own
## ! system of units.

type
  Units_UnitsSystem* {.importcpp: "Units_UnitsSystem",
                      header: "Units_UnitsSystem.hxx", bycopy.} = object of Standard_Transient ##
                                                                                        ## !
                                                                                        ## Returns
                                                                                        ## an
                                                                                        ## instance
                                                                                        ## of
                                                                                        ## UnitsSystem
                                                                                        ## initialized
                                                                                        ## to
                                                                                        ## the
                                                                                        ##
                                                                                        ## !
                                                                                        ## S.I.
                                                                                        ## units
                                                                                        ## system.


proc constructUnits_UnitsSystem*(): Units_UnitsSystem {.constructor,
    importcpp: "Units_UnitsSystem(@)", header: "Units_UnitsSystem.hxx".}
proc constructUnits_UnitsSystem*(aName: Standard_CString;
                                Verbose: Standard_Boolean = Standard_False): Units_UnitsSystem {.
    constructor, importcpp: "Units_UnitsSystem(@)", header: "Units_UnitsSystem.hxx".}
proc QuantitiesSequence*(this: Units_UnitsSystem): handle[Units_QuantitiesSequence] {.
    noSideEffect, importcpp: "QuantitiesSequence", header: "Units_UnitsSystem.hxx".}
proc ActiveUnitsSequence*(this: Units_UnitsSystem): handle[
    TColStd_HSequenceOfInteger] {.noSideEffect, importcpp: "ActiveUnitsSequence",
                                 header: "Units_UnitsSystem.hxx".}
proc Specify*(this: var Units_UnitsSystem; aquantity: Standard_CString;
             aunit: Standard_CString) {.importcpp: "Specify",
                                      header: "Units_UnitsSystem.hxx".}
proc Remove*(this: var Units_UnitsSystem; aquantity: Standard_CString;
            aunit: Standard_CString) {.importcpp: "Remove",
                                     header: "Units_UnitsSystem.hxx".}
proc Activate*(this: var Units_UnitsSystem; aquantity: Standard_CString;
              aunit: Standard_CString) {.importcpp: "Activate",
                                       header: "Units_UnitsSystem.hxx".}
proc Activates*(this: var Units_UnitsSystem) {.importcpp: "Activates",
    header: "Units_UnitsSystem.hxx".}
proc ActiveUnit*(this: Units_UnitsSystem; aquantity: Standard_CString): TCollection_AsciiString {.
    noSideEffect, importcpp: "ActiveUnit", header: "Units_UnitsSystem.hxx".}
proc ConvertValueToUserSystem*(this: Units_UnitsSystem;
                              aquantity: Standard_CString; avalue: Standard_Real;
                              aunit: Standard_CString): Standard_Real {.
    noSideEffect, importcpp: "ConvertValueToUserSystem",
    header: "Units_UnitsSystem.hxx".}
proc ConvertSIValueToUserSystem*(this: Units_UnitsSystem;
                                aquantity: Standard_CString; avalue: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "ConvertSIValueToUserSystem",
    header: "Units_UnitsSystem.hxx".}
proc ConvertUserSystemValueToSI*(this: Units_UnitsSystem;
                                aquantity: Standard_CString; avalue: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "ConvertUserSystemValueToSI",
    header: "Units_UnitsSystem.hxx".}
proc Dump*(this: Units_UnitsSystem) {.noSideEffect, importcpp: "Dump",
                                   header: "Units_UnitsSystem.hxx".}
proc IsEmpty*(this: Units_UnitsSystem): Standard_Boolean {.noSideEffect,
    importcpp: "IsEmpty", header: "Units_UnitsSystem.hxx".}
type
  Units_UnitsSystembase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Units_UnitsSystem::get_type_name(@)",
                              header: "Units_UnitsSystem.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Units_UnitsSystem::get_type_descriptor(@)",
    header: "Units_UnitsSystem.hxx".}
proc DynamicType*(this: Units_UnitsSystem): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Units_UnitsSystem.hxx".}