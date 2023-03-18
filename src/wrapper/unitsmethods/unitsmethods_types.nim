

type
  UnitsMethods* {.importcpp: "UnitsMethods", header: "UnitsMethods.hxx", bycopy.} = object 

  UnitsMethodsLengthUnit* {.size: sizeof(cint),
                           importcpp: "UnitsMethods_LengthUnit",
                           header: "UnitsMethods_LengthUnit.hxx".} = enum
    unitsMethodsLengthUnitUndefined = 0, 
    unitsMethodsLengthUnitInch = 1, 
    unitsMethodsLengthUnitMillimeter = 2, 
    unitsMethodsLengthUnitFoot = 4, 
    unitsMethodsLengthUnitMile = 5, 
    unitsMethodsLengthUnitMeter = 6, 
    unitsMethodsLengthUnitKilometer = 7, 
    unitsMethodsLengthUnitMil = 8, 
    unitsMethodsLengthUnitMicron = 9, 
    unitsMethodsLengthUnitCentimeter = 10, 
    unitsMethodsLengthUnitMicroinch = 11


