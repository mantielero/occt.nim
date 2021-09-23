##  Created on: 1993-01-09
##  Created by: CKY / Contract Toubro-Larsen (Anand NATRAJAN)
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Integer,
  ../IGESData/IGESData_IGESEntity

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of IGESDimen_DimensionUnits"
discard "forward decl of IGESDimen_DimensionUnits"
type
  Handle_IGESDimen_DimensionUnits* = handle[IGESDimen_DimensionUnits]

## ! defines Dimension Units, Type <406>, Form <28>
## ! in package IGESDimen
## ! Describes the units and formatting details of the
## ! nominal value of a dimension.

type
  IGESDimen_DimensionUnits* {.importcpp: "IGESDimen_DimensionUnits",
                             header: "IGESDimen_DimensionUnits.hxx", bycopy.} = object of IGESData_IGESEntity


proc constructIGESDimen_DimensionUnits*(): IGESDimen_DimensionUnits {.constructor,
    importcpp: "IGESDimen_DimensionUnits(@)",
    header: "IGESDimen_DimensionUnits.hxx".}
proc Init*(this: var IGESDimen_DimensionUnits; nbPropVal: Standard_Integer;
          aSecondPos: Standard_Integer; aUnitsInd: Standard_Integer;
          aCharSet: Standard_Integer; aFormat: handle[TCollection_HAsciiString];
          aFracFlag: Standard_Integer; aPrecision: Standard_Integer) {.
    importcpp: "Init", header: "IGESDimen_DimensionUnits.hxx".}
proc NbPropertyValues*(this: IGESDimen_DimensionUnits): Standard_Integer {.
    noSideEffect, importcpp: "NbPropertyValues",
    header: "IGESDimen_DimensionUnits.hxx".}
proc SecondaryDimenPosition*(this: IGESDimen_DimensionUnits): Standard_Integer {.
    noSideEffect, importcpp: "SecondaryDimenPosition",
    header: "IGESDimen_DimensionUnits.hxx".}
proc UnitsIndicator*(this: IGESDimen_DimensionUnits): Standard_Integer {.
    noSideEffect, importcpp: "UnitsIndicator",
    header: "IGESDimen_DimensionUnits.hxx".}
proc CharacterSet*(this: IGESDimen_DimensionUnits): Standard_Integer {.noSideEffect,
    importcpp: "CharacterSet", header: "IGESDimen_DimensionUnits.hxx".}
proc FormatString*(this: IGESDimen_DimensionUnits): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "FormatString", header: "IGESDimen_DimensionUnits.hxx".}
proc FractionFlag*(this: IGESDimen_DimensionUnits): Standard_Integer {.noSideEffect,
    importcpp: "FractionFlag", header: "IGESDimen_DimensionUnits.hxx".}
proc PrecisionOrDenominator*(this: IGESDimen_DimensionUnits): Standard_Integer {.
    noSideEffect, importcpp: "PrecisionOrDenominator",
    header: "IGESDimen_DimensionUnits.hxx".}
type
  IGESDimen_DimensionUnitsbase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESDimen_DimensionUnits::get_type_name(@)",
                              header: "IGESDimen_DimensionUnits.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESDimen_DimensionUnits::get_type_descriptor(@)",
    header: "IGESDimen_DimensionUnits.hxx".}
proc DynamicType*(this: IGESDimen_DimensionUnits): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESDimen_DimensionUnits.hxx".}