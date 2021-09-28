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

discard "forward decl of Units_Dimensions"
type
  UnitsAPI* {.importcpp: "UnitsAPI", header: "UnitsAPI.hxx", bycopy.} = object ## ! Converts the current unit value to the local system units value.
                                                                       ## ! Example:
                                                                       ## CurrentToLS(1.,"LENGTH") returns 1000. if the current length unit
                                                                       ## ! is meter and
                                                                       ## LocalSystem is MDTV.


proc currentToLS*(aData: cfloat; aQuantity: StandardCString): cfloat {.
    importcpp: "UnitsAPI::CurrentToLS(@)", header: "UnitsAPI.hxx".}
proc currentToSI*(aData: cfloat; aQuantity: StandardCString): cfloat {.
    importcpp: "UnitsAPI::CurrentToSI(@)", header: "UnitsAPI.hxx".}
proc currentFromLS*(aData: cfloat; aQuantity: StandardCString): cfloat {.
    importcpp: "UnitsAPI::CurrentFromLS(@)", header: "UnitsAPI.hxx".}
proc currentFromSI*(aData: cfloat; aQuantity: StandardCString): cfloat {.
    importcpp: "UnitsAPI::CurrentFromSI(@)", header: "UnitsAPI.hxx".}
proc anyToLS*(aData: cfloat; aUnit: StandardCString): cfloat {.
    importcpp: "UnitsAPI::AnyToLS(@)", header: "UnitsAPI.hxx".}
proc anyToLS*(aData: cfloat; aUnit: StandardCString;
             aDim: var Handle[UnitsDimensions]): cfloat {.
    importcpp: "UnitsAPI::AnyToLS(@)", header: "UnitsAPI.hxx".}
proc anyToSI*(aData: cfloat; aUnit: StandardCString): cfloat {.
    importcpp: "UnitsAPI::AnyToSI(@)", header: "UnitsAPI.hxx".}
proc anyToSI*(aData: cfloat; aUnit: StandardCString;
             aDim: var Handle[UnitsDimensions]): cfloat {.
    importcpp: "UnitsAPI::AnyToSI(@)", header: "UnitsAPI.hxx".}
proc anyFromLS*(aData: cfloat; aUnit: StandardCString): cfloat {.
    importcpp: "UnitsAPI::AnyFromLS(@)", header: "UnitsAPI.hxx".}
proc anyFromSI*(aData: cfloat; aUnit: StandardCString): cfloat {.
    importcpp: "UnitsAPI::AnyFromSI(@)", header: "UnitsAPI.hxx".}
proc currentToAny*(aData: cfloat; aQuantity: StandardCString; aUnit: StandardCString): cfloat {.
    importcpp: "UnitsAPI::CurrentToAny(@)", header: "UnitsAPI.hxx".}
proc currentFromAny*(aData: cfloat; aQuantity: StandardCString;
                    aUnit: StandardCString): cfloat {.
    importcpp: "UnitsAPI::CurrentFromAny(@)", header: "UnitsAPI.hxx".}
proc anyToAny*(aData: cfloat; aUnit1: StandardCString; aUnit2: StandardCString): cfloat {.
    importcpp: "UnitsAPI::AnyToAny(@)", header: "UnitsAPI.hxx".}
proc lSToSI*(aData: cfloat; aQuantity: StandardCString): cfloat {.
    importcpp: "UnitsAPI::LSToSI(@)", header: "UnitsAPI.hxx".}
proc sIToLS*(aData: cfloat; aQuantity: StandardCString): cfloat {.
    importcpp: "UnitsAPI::SIToLS(@)", header: "UnitsAPI.hxx".}
proc setLocalSystem*(aSystemUnit: UnitsAPI_SystemUnits = unitsAPI_SI) {.
    importcpp: "UnitsAPI::SetLocalSystem(@)", header: "UnitsAPI.hxx".}
proc localSystem*(): UnitsAPI_SystemUnits {.importcpp: "UnitsAPI::LocalSystem(@)",
    header: "UnitsAPI.hxx".}
proc setCurrentUnit*(aQuantity: StandardCString; aUnit: StandardCString) {.
    importcpp: "UnitsAPI::SetCurrentUnit(@)", header: "UnitsAPI.hxx".}
proc currentUnit*(aQuantity: StandardCString): StandardCString {.
    importcpp: "UnitsAPI::CurrentUnit(@)", header: "UnitsAPI.hxx".}
proc save*() {.importcpp: "UnitsAPI::Save(@)", header: "UnitsAPI.hxx".}
proc reload*() {.importcpp: "UnitsAPI::Reload(@)", header: "UnitsAPI.hxx".}
proc dimensions*(aQuantity: StandardCString): Handle[UnitsDimensions] {.
    importcpp: "UnitsAPI::Dimensions(@)", header: "UnitsAPI.hxx".}
proc dimensionLess*(): Handle[UnitsDimensions] {.
    importcpp: "UnitsAPI::DimensionLess(@)", header: "UnitsAPI.hxx".}
proc dimensionMass*(): Handle[UnitsDimensions] {.
    importcpp: "UnitsAPI::DimensionMass(@)", header: "UnitsAPI.hxx".}
proc dimensionLength*(): Handle[UnitsDimensions] {.
    importcpp: "UnitsAPI::DimensionLength(@)", header: "UnitsAPI.hxx".}
proc dimensionTime*(): Handle[UnitsDimensions] {.
    importcpp: "UnitsAPI::DimensionTime(@)", header: "UnitsAPI.hxx".}
proc dimensionElectricCurrent*(): Handle[UnitsDimensions] {.
    importcpp: "UnitsAPI::DimensionElectricCurrent(@)", header: "UnitsAPI.hxx".}
proc dimensionThermodynamicTemperature*(): Handle[UnitsDimensions] {.
    importcpp: "UnitsAPI::DimensionThermodynamicTemperature(@)",
    header: "UnitsAPI.hxx".}
proc dimensionAmountOfSubstance*(): Handle[UnitsDimensions] {.
    importcpp: "UnitsAPI::DimensionAmountOfSubstance(@)", header: "UnitsAPI.hxx".}
proc dimensionLuminousIntensity*(): Handle[UnitsDimensions] {.
    importcpp: "UnitsAPI::DimensionLuminousIntensity(@)", header: "UnitsAPI.hxx".}
proc dimensionPlaneAngle*(): Handle[UnitsDimensions] {.
    importcpp: "UnitsAPI::DimensionPlaneAngle(@)", header: "UnitsAPI.hxx".}
proc dimensionSolidAngle*(): Handle[UnitsDimensions] {.
    importcpp: "UnitsAPI::DimensionSolidAngle(@)", header: "UnitsAPI.hxx".}
proc check*(aQuantity: StandardCString; aUnit: StandardCString): bool {.
    importcpp: "UnitsAPI::Check(@)", header: "UnitsAPI.hxx".}

























