import unitsmethods_types



##  Copyright (c) 2021 OPEN CASCADE SAS
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

## ! Class for using global units variables



proc getLengthFactorValue*(theUnit: cint): cfloat {.cdecl,
    importcpp: "UnitsMethods::GetLengthFactorValue(@)", header: "UnitsMethods.hxx".}
proc getCasCadeLengthUnit*(theBaseUnit: UnitsMethodsLengthUnit = unitsMethodsLengthUnitMillimeter): cfloat {.
    cdecl, importcpp: "UnitsMethods::GetCasCadeLengthUnit(@)",
    header: "UnitsMethods.hxx".}
proc setCasCadeLengthUnit*(theUnitValue: cfloat; theBaseUnit: UnitsMethodsLengthUnit = unitsMethodsLengthUnitMillimeter) {.
    cdecl, importcpp: "UnitsMethods::SetCasCadeLengthUnit(@)",
    header: "UnitsMethods.hxx".}
proc setCasCadeLengthUnit*(theUnit: cint) {.cdecl,
    importcpp: "UnitsMethods::SetCasCadeLengthUnit(@)", header: "UnitsMethods.hxx".}
proc getLengthUnitScale*(theFromUnit: UnitsMethodsLengthUnit;
                        theToUnit: UnitsMethodsLengthUnit): cfloat {.cdecl,
    importcpp: "UnitsMethods::GetLengthUnitScale(@)", header: "UnitsMethods.hxx".}
proc getLengthUnitByFactorValue*(theFactorValue: cfloat; theBaseUnit: UnitsMethodsLengthUnit = unitsMethodsLengthUnitMillimeter): UnitsMethodsLengthUnit {.
    cdecl, importcpp: "UnitsMethods::GetLengthUnitByFactorValue(@)",
    header: "UnitsMethods.hxx".}
proc dumpLengthUnit*(theScaleFactor: cfloat; theBaseUnit: UnitsMethodsLengthUnit = unitsMethodsLengthUnitMillimeter): cstring {.
    cdecl, importcpp: "UnitsMethods::DumpLengthUnit(@)", header: "UnitsMethods.hxx".}
proc dumpLengthUnit*(theUnit: UnitsMethodsLengthUnit): cstring {.cdecl,
    importcpp: "UnitsMethods::DumpLengthUnit(@)", header: "UnitsMethods.hxx".}
proc lengthUnitFromString*(theStr: cstring; theCaseSensitive: bool): UnitsMethodsLengthUnit {.
    cdecl, importcpp: "UnitsMethods::LengthUnitFromString(@)",
    header: "UnitsMethods.hxx".}

