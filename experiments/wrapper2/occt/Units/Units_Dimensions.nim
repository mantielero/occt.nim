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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Real,
  ../Standard/Standard_Transient, ../Standard/Standard_CString,
  ../Standard/Standard_Boolean, ../Standard/Standard_Integer

discard "forward decl of Units_Dimensions"
discard "forward decl of Units_Dimensions"
type
  Handle_Units_Dimensions* = handle[Units_Dimensions]

## ! This class includes all  the methods to create and
## ! manipulate    the   dimensions  of the    physical
## ! quantities.

type
  Units_Dimensions* {.importcpp: "Units_Dimensions",
                     header: "Units_Dimensions.hxx", bycopy.} = object of Standard_Transient ##
                                                                                      ## !
                                                                                      ## Returns
                                                                                      ## a
                                                                                      ## Dimensions
                                                                                      ## object
                                                                                      ## which
                                                                                      ## represents
                                                                                      ## the
                                                                                      ##
                                                                                      ## !
                                                                                      ## dimension
                                                                                      ## of
                                                                                      ## a
                                                                                      ## physical
                                                                                      ## quantity.
                                                                                      ## Each
                                                                                      ## of
                                                                                      ## the
                                                                                      ##
                                                                                      ## !
                                                                                      ## <amass>,
                                                                                      ## <alength>,
                                                                                      ## <atime>,
                                                                                      ## <anelectriccurrent>,
                                                                                      ##
                                                                                      ## !
                                                                                      ## <athermodynamictemperature>,
                                                                                      ## <anamountofsubstance>,
                                                                                      ##
                                                                                      ## !
                                                                                      ## <aluminousintensity>,
                                                                                      ## <aplaneangle>,
                                                                                      ## <asolidangle>
                                                                                      ## are
                                                                                      ##
                                                                                      ## !
                                                                                      ## the
                                                                                      ## powers
                                                                                      ## for
                                                                                      ## the
                                                                                      ## 7
                                                                                      ## fundamental
                                                                                      ## units
                                                                                      ## of
                                                                                      ## physical
                                                                                      ##
                                                                                      ## !
                                                                                      ## quantity
                                                                                      ## and
                                                                                      ## the
                                                                                      ## 2
                                                                                      ## secondary
                                                                                      ## fundamental
                                                                                      ## units
                                                                                      ## of
                                                                                      ##
                                                                                      ## !
                                                                                      ## physical
                                                                                      ## quantity.


proc constructUnits_Dimensions*(amass: Standard_Real; alength: Standard_Real;
                               atime: Standard_Real;
                               anelectriccurrent: Standard_Real;
                               athermodynamictemperature: Standard_Real;
                               anamountofsubstance: Standard_Real;
                               aluminousintensity: Standard_Real;
                               aplaneangle: Standard_Real;
                               asolidangle: Standard_Real): Units_Dimensions {.
    constructor, importcpp: "Units_Dimensions(@)", header: "Units_Dimensions.hxx".}
proc Mass*(this: Units_Dimensions): Standard_Real {.noSideEffect, importcpp: "Mass",
    header: "Units_Dimensions.hxx".}
proc Length*(this: Units_Dimensions): Standard_Real {.noSideEffect,
    importcpp: "Length", header: "Units_Dimensions.hxx".}
proc Time*(this: Units_Dimensions): Standard_Real {.noSideEffect, importcpp: "Time",
    header: "Units_Dimensions.hxx".}
proc ElectricCurrent*(this: Units_Dimensions): Standard_Real {.noSideEffect,
    importcpp: "ElectricCurrent", header: "Units_Dimensions.hxx".}
proc ThermodynamicTemperature*(this: Units_Dimensions): Standard_Real {.
    noSideEffect, importcpp: "ThermodynamicTemperature",
    header: "Units_Dimensions.hxx".}
proc AmountOfSubstance*(this: Units_Dimensions): Standard_Real {.noSideEffect,
    importcpp: "AmountOfSubstance", header: "Units_Dimensions.hxx".}
proc LuminousIntensity*(this: Units_Dimensions): Standard_Real {.noSideEffect,
    importcpp: "LuminousIntensity", header: "Units_Dimensions.hxx".}
proc PlaneAngle*(this: Units_Dimensions): Standard_Real {.noSideEffect,
    importcpp: "PlaneAngle", header: "Units_Dimensions.hxx".}
proc SolidAngle*(this: Units_Dimensions): Standard_Real {.noSideEffect,
    importcpp: "SolidAngle", header: "Units_Dimensions.hxx".}
proc Quantity*(this: Units_Dimensions): Standard_CString {.noSideEffect,
    importcpp: "Quantity", header: "Units_Dimensions.hxx".}
proc Multiply*(this: Units_Dimensions; adimensions: handle[Units_Dimensions]): handle[
    Units_Dimensions] {.noSideEffect, importcpp: "Multiply",
                       header: "Units_Dimensions.hxx".}
proc Divide*(this: Units_Dimensions; adimensions: handle[Units_Dimensions]): handle[
    Units_Dimensions] {.noSideEffect, importcpp: "Divide",
                       header: "Units_Dimensions.hxx".}
proc Power*(this: Units_Dimensions; anexponent: Standard_Real): handle[
    Units_Dimensions] {.noSideEffect, importcpp: "Power",
                       header: "Units_Dimensions.hxx".}
proc IsEqual*(this: Units_Dimensions; adimensions: handle[Units_Dimensions]): Standard_Boolean {.
    noSideEffect, importcpp: "IsEqual", header: "Units_Dimensions.hxx".}
proc IsNotEqual*(this: Units_Dimensions; adimensions: handle[Units_Dimensions]): Standard_Boolean {.
    noSideEffect, importcpp: "IsNotEqual", header: "Units_Dimensions.hxx".}
proc Dump*(this: Units_Dimensions; ashift: Standard_Integer) {.noSideEffect,
    importcpp: "Dump", header: "Units_Dimensions.hxx".}
proc ALess*(): handle[Units_Dimensions] {.importcpp: "Units_Dimensions::ALess(@)",
                                       header: "Units_Dimensions.hxx".}
proc AMass*(): handle[Units_Dimensions] {.importcpp: "Units_Dimensions::AMass(@)",
                                       header: "Units_Dimensions.hxx".}
proc ALength*(): handle[Units_Dimensions] {.
    importcpp: "Units_Dimensions::ALength(@)", header: "Units_Dimensions.hxx".}
proc ATime*(): handle[Units_Dimensions] {.importcpp: "Units_Dimensions::ATime(@)",
                                       header: "Units_Dimensions.hxx".}
proc AElectricCurrent*(): handle[Units_Dimensions] {.
    importcpp: "Units_Dimensions::AElectricCurrent(@)",
    header: "Units_Dimensions.hxx".}
proc AThermodynamicTemperature*(): handle[Units_Dimensions] {.
    importcpp: "Units_Dimensions::AThermodynamicTemperature(@)",
    header: "Units_Dimensions.hxx".}
proc AAmountOfSubstance*(): handle[Units_Dimensions] {.
    importcpp: "Units_Dimensions::AAmountOfSubstance(@)",
    header: "Units_Dimensions.hxx".}
proc ALuminousIntensity*(): handle[Units_Dimensions] {.
    importcpp: "Units_Dimensions::ALuminousIntensity(@)",
    header: "Units_Dimensions.hxx".}
proc APlaneAngle*(): handle[Units_Dimensions] {.
    importcpp: "Units_Dimensions::APlaneAngle(@)", header: "Units_Dimensions.hxx".}
proc ASolidAngle*(): handle[Units_Dimensions] {.
    importcpp: "Units_Dimensions::ASolidAngle(@)", header: "Units_Dimensions.hxx".}
type
  Units_Dimensionsbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Units_Dimensions::get_type_name(@)",
                              header: "Units_Dimensions.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Units_Dimensions::get_type_descriptor(@)",
    header: "Units_Dimensions.hxx".}
proc DynamicType*(this: Units_Dimensions): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Units_Dimensions.hxx".}