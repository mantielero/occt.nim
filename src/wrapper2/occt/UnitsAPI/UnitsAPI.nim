##  Created on: 1995-11-15
##  Created by: Jean-Louis Frenkel <rmi@pernox>
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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Real,
  ../Standard/Standard_CString, UnitsAPI_SystemUnits, ../Standard/Standard_Boolean

discard "forward decl of Units_Dimensions"
type
  UnitsAPI* {.importcpp: "UnitsAPI", header: "UnitsAPI.hxx", bycopy.} = object ## ! Converts the current unit value to the local system units value.
                                                                       ## ! Example:
                                                                       ## CurrentToLS(1.,"LENGTH") returns 1000. if the current length unit
                                                                       ## ! is meter and
                                                                       ## LocalSystem is MDTV.


proc CurrentToLS*(aData: Standard_Real; aQuantity: Standard_CString): Standard_Real {.
    importcpp: "UnitsAPI::CurrentToLS(@)", header: "UnitsAPI.hxx".}
proc CurrentToSI*(aData: Standard_Real; aQuantity: Standard_CString): Standard_Real {.
    importcpp: "UnitsAPI::CurrentToSI(@)", header: "UnitsAPI.hxx".}
proc CurrentFromLS*(aData: Standard_Real; aQuantity: Standard_CString): Standard_Real {.
    importcpp: "UnitsAPI::CurrentFromLS(@)", header: "UnitsAPI.hxx".}
proc CurrentFromSI*(aData: Standard_Real; aQuantity: Standard_CString): Standard_Real {.
    importcpp: "UnitsAPI::CurrentFromSI(@)", header: "UnitsAPI.hxx".}
proc AnyToLS*(aData: Standard_Real; aUnit: Standard_CString): Standard_Real {.
    importcpp: "UnitsAPI::AnyToLS(@)", header: "UnitsAPI.hxx".}
proc AnyToLS*(aData: Standard_Real; aUnit: Standard_CString;
             aDim: var handle[Units_Dimensions]): Standard_Real {.
    importcpp: "UnitsAPI::AnyToLS(@)", header: "UnitsAPI.hxx".}
proc AnyToSI*(aData: Standard_Real; aUnit: Standard_CString): Standard_Real {.
    importcpp: "UnitsAPI::AnyToSI(@)", header: "UnitsAPI.hxx".}
proc AnyToSI*(aData: Standard_Real; aUnit: Standard_CString;
             aDim: var handle[Units_Dimensions]): Standard_Real {.
    importcpp: "UnitsAPI::AnyToSI(@)", header: "UnitsAPI.hxx".}
proc AnyFromLS*(aData: Standard_Real; aUnit: Standard_CString): Standard_Real {.
    importcpp: "UnitsAPI::AnyFromLS(@)", header: "UnitsAPI.hxx".}
proc AnyFromSI*(aData: Standard_Real; aUnit: Standard_CString): Standard_Real {.
    importcpp: "UnitsAPI::AnyFromSI(@)", header: "UnitsAPI.hxx".}
proc CurrentToAny*(aData: Standard_Real; aQuantity: Standard_CString;
                  aUnit: Standard_CString): Standard_Real {.
    importcpp: "UnitsAPI::CurrentToAny(@)", header: "UnitsAPI.hxx".}
proc CurrentFromAny*(aData: Standard_Real; aQuantity: Standard_CString;
                    aUnit: Standard_CString): Standard_Real {.
    importcpp: "UnitsAPI::CurrentFromAny(@)", header: "UnitsAPI.hxx".}
proc AnyToAny*(aData: Standard_Real; aUnit1: Standard_CString;
              aUnit2: Standard_CString): Standard_Real {.
    importcpp: "UnitsAPI::AnyToAny(@)", header: "UnitsAPI.hxx".}
proc LSToSI*(aData: Standard_Real; aQuantity: Standard_CString): Standard_Real {.
    importcpp: "UnitsAPI::LSToSI(@)", header: "UnitsAPI.hxx".}
proc SIToLS*(aData: Standard_Real; aQuantity: Standard_CString): Standard_Real {.
    importcpp: "UnitsAPI::SIToLS(@)", header: "UnitsAPI.hxx".}
proc SetLocalSystem*(aSystemUnit: UnitsAPI_SystemUnits = UnitsAPI_SI) {.
    importcpp: "UnitsAPI::SetLocalSystem(@)", header: "UnitsAPI.hxx".}
proc LocalSystem*(): UnitsAPI_SystemUnits {.importcpp: "UnitsAPI::LocalSystem(@)",
    header: "UnitsAPI.hxx".}
proc SetCurrentUnit*(aQuantity: Standard_CString; aUnit: Standard_CString) {.
    importcpp: "UnitsAPI::SetCurrentUnit(@)", header: "UnitsAPI.hxx".}
proc CurrentUnit*(aQuantity: Standard_CString): Standard_CString {.
    importcpp: "UnitsAPI::CurrentUnit(@)", header: "UnitsAPI.hxx".}
proc Save*() {.importcpp: "UnitsAPI::Save(@)", header: "UnitsAPI.hxx".}
proc Reload*() {.importcpp: "UnitsAPI::Reload(@)", header: "UnitsAPI.hxx".}
proc Dimensions*(aQuantity: Standard_CString): handle[Units_Dimensions] {.
    importcpp: "UnitsAPI::Dimensions(@)", header: "UnitsAPI.hxx".}
proc DimensionLess*(): handle[Units_Dimensions] {.
    importcpp: "UnitsAPI::DimensionLess(@)", header: "UnitsAPI.hxx".}
proc DimensionMass*(): handle[Units_Dimensions] {.
    importcpp: "UnitsAPI::DimensionMass(@)", header: "UnitsAPI.hxx".}
proc DimensionLength*(): handle[Units_Dimensions] {.
    importcpp: "UnitsAPI::DimensionLength(@)", header: "UnitsAPI.hxx".}
proc DimensionTime*(): handle[Units_Dimensions] {.
    importcpp: "UnitsAPI::DimensionTime(@)", header: "UnitsAPI.hxx".}
proc DimensionElectricCurrent*(): handle[Units_Dimensions] {.
    importcpp: "UnitsAPI::DimensionElectricCurrent(@)", header: "UnitsAPI.hxx".}
proc DimensionThermodynamicTemperature*(): handle[Units_Dimensions] {.
    importcpp: "UnitsAPI::DimensionThermodynamicTemperature(@)",
    header: "UnitsAPI.hxx".}
proc DimensionAmountOfSubstance*(): handle[Units_Dimensions] {.
    importcpp: "UnitsAPI::DimensionAmountOfSubstance(@)", header: "UnitsAPI.hxx".}
proc DimensionLuminousIntensity*(): handle[Units_Dimensions] {.
    importcpp: "UnitsAPI::DimensionLuminousIntensity(@)", header: "UnitsAPI.hxx".}
proc DimensionPlaneAngle*(): handle[Units_Dimensions] {.
    importcpp: "UnitsAPI::DimensionPlaneAngle(@)", header: "UnitsAPI.hxx".}
proc DimensionSolidAngle*(): handle[Units_Dimensions] {.
    importcpp: "UnitsAPI::DimensionSolidAngle(@)", header: "UnitsAPI.hxx".}
proc Check*(aQuantity: Standard_CString; aUnit: Standard_CString): Standard_Boolean {.
    importcpp: "UnitsAPI::Check(@)", header: "UnitsAPI.hxx".}