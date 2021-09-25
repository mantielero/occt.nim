##  Created on: 1992-06-22
##  Created by: Gilles DEBARBOUILLE
##  Copyright (c) 1992-1999 Matra Datavision
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
discard "forward decl of Units_Dimensions"
type
  HandleUnitsDimensions* = Handle[UnitsDimensions]

## ! This class includes all  the methods to create and
## ! manipulate    the   dimensions  of the    physical
## ! quantities.

type
  UnitsDimensions* {.importcpp: "Units_Dimensions", header: "Units_Dimensions.hxx",
                    bycopy.} = object of StandardTransient ## ! Returns  a  Dimensions  object  which  represents  the
                                                      ## ! dimension  of  a  physical  quantity.    Each  of  the
                                                      ## ! <amass>,  <alength>,   <atime>,   <anelectriccurrent>,
                                                      ## !
                                                      ## <athermodynamictemperature>,    <anamountofsubstance>,
                                                      ## ! <aluminousintensity>, <aplaneangle>, <asolidangle> are
                                                      ## ! the powers for  the 7  fundamental  units of  physical
                                                      ## ! quantity and  the 2  secondary  fundamental  units  of
                                                      ## ! physical quantity.


proc constructUnitsDimensions*(amass: float; alength: float; atime: float;
                              anelectriccurrent: float;
                              athermodynamictemperature: float;
                              anamountofsubstance: float;
                              aluminousintensity: float; aplaneangle: float;
                              asolidangle: float): UnitsDimensions {.constructor,
    importcpp: "Units_Dimensions(@)", header: "Units_Dimensions.hxx".}
proc mass*(this: UnitsDimensions): float {.noSideEffect, importcpp: "Mass",
                                       header: "Units_Dimensions.hxx".}
proc length*(this: UnitsDimensions): float {.noSideEffect, importcpp: "Length",
    header: "Units_Dimensions.hxx".}
proc time*(this: UnitsDimensions): float {.noSideEffect, importcpp: "Time",
                                       header: "Units_Dimensions.hxx".}
proc electricCurrent*(this: UnitsDimensions): float {.noSideEffect,
    importcpp: "ElectricCurrent", header: "Units_Dimensions.hxx".}
proc thermodynamicTemperature*(this: UnitsDimensions): float {.noSideEffect,
    importcpp: "ThermodynamicTemperature", header: "Units_Dimensions.hxx".}
proc amountOfSubstance*(this: UnitsDimensions): float {.noSideEffect,
    importcpp: "AmountOfSubstance", header: "Units_Dimensions.hxx".}
proc luminousIntensity*(this: UnitsDimensions): float {.noSideEffect,
    importcpp: "LuminousIntensity", header: "Units_Dimensions.hxx".}
proc planeAngle*(this: UnitsDimensions): float {.noSideEffect,
    importcpp: "PlaneAngle", header: "Units_Dimensions.hxx".}
proc solidAngle*(this: UnitsDimensions): float {.noSideEffect,
    importcpp: "SolidAngle", header: "Units_Dimensions.hxx".}
proc quantity*(this: UnitsDimensions): StandardCString {.noSideEffect,
    importcpp: "Quantity", header: "Units_Dimensions.hxx".}
proc multiply*(this: UnitsDimensions; adimensions: Handle[UnitsDimensions]): Handle[
    UnitsDimensions] {.noSideEffect, importcpp: "Multiply",
                      header: "Units_Dimensions.hxx".}
proc divide*(this: UnitsDimensions; adimensions: Handle[UnitsDimensions]): Handle[
    UnitsDimensions] {.noSideEffect, importcpp: "Divide",
                      header: "Units_Dimensions.hxx".}
proc power*(this: UnitsDimensions; anexponent: float): Handle[UnitsDimensions] {.
    noSideEffect, importcpp: "Power", header: "Units_Dimensions.hxx".}
proc isEqual*(this: UnitsDimensions; adimensions: Handle[UnitsDimensions]): bool {.
    noSideEffect, importcpp: "IsEqual", header: "Units_Dimensions.hxx".}
proc isNotEqual*(this: UnitsDimensions; adimensions: Handle[UnitsDimensions]): bool {.
    noSideEffect, importcpp: "IsNotEqual", header: "Units_Dimensions.hxx".}
proc dump*(this: UnitsDimensions; ashift: int) {.noSideEffect, importcpp: "Dump",
    header: "Units_Dimensions.hxx".}
proc aLess*(): Handle[UnitsDimensions] {.importcpp: "Units_Dimensions::ALess(@)",
                                      header: "Units_Dimensions.hxx".}
proc aMass*(): Handle[UnitsDimensions] {.importcpp: "Units_Dimensions::AMass(@)",
                                      header: "Units_Dimensions.hxx".}
proc aLength*(): Handle[UnitsDimensions] {.importcpp: "Units_Dimensions::ALength(@)",
                                        header: "Units_Dimensions.hxx".}
proc aTime*(): Handle[UnitsDimensions] {.importcpp: "Units_Dimensions::ATime(@)",
                                      header: "Units_Dimensions.hxx".}
proc aElectricCurrent*(): Handle[UnitsDimensions] {.
    importcpp: "Units_Dimensions::AElectricCurrent(@)",
    header: "Units_Dimensions.hxx".}
proc aThermodynamicTemperature*(): Handle[UnitsDimensions] {.
    importcpp: "Units_Dimensions::AThermodynamicTemperature(@)",
    header: "Units_Dimensions.hxx".}
proc aAmountOfSubstance*(): Handle[UnitsDimensions] {.
    importcpp: "Units_Dimensions::AAmountOfSubstance(@)",
    header: "Units_Dimensions.hxx".}
proc aLuminousIntensity*(): Handle[UnitsDimensions] {.
    importcpp: "Units_Dimensions::ALuminousIntensity(@)",
    header: "Units_Dimensions.hxx".}
proc aPlaneAngle*(): Handle[UnitsDimensions] {.
    importcpp: "Units_Dimensions::APlaneAngle(@)", header: "Units_Dimensions.hxx".}
proc aSolidAngle*(): Handle[UnitsDimensions] {.
    importcpp: "Units_Dimensions::ASolidAngle(@)", header: "Units_Dimensions.hxx".}
type
  UnitsDimensionsbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Units_Dimensions::get_type_name(@)",
                            header: "Units_Dimensions.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Units_Dimensions::get_type_descriptor(@)",
    header: "Units_Dimensions.hxx".}
proc dynamicType*(this: UnitsDimensions): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Units_Dimensions.hxx".}
