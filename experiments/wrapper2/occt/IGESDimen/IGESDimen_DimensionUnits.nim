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

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of IGESDimen_DimensionUnits"
discard "forward decl of IGESDimen_DimensionUnits"
type
  HandleIGESDimenDimensionUnits* = Handle[IGESDimenDimensionUnits]

## ! defines Dimension Units, Type <406>, Form <28>
## ! in package IGESDimen
## ! Describes the units and formatting details of the
## ! nominal value of a dimension.

type
  IGESDimenDimensionUnits* {.importcpp: "IGESDimen_DimensionUnits",
                            header: "IGESDimen_DimensionUnits.hxx", bycopy.} = object of IGESDataIGESEntity


proc constructIGESDimenDimensionUnits*(): IGESDimenDimensionUnits {.constructor,
    importcpp: "IGESDimen_DimensionUnits(@)",
    header: "IGESDimen_DimensionUnits.hxx".}
proc init*(this: var IGESDimenDimensionUnits; nbPropVal: int; aSecondPos: int;
          aUnitsInd: int; aCharSet: int; aFormat: Handle[TCollectionHAsciiString];
          aFracFlag: int; aPrecision: int) {.importcpp: "Init",
    header: "IGESDimen_DimensionUnits.hxx".}
proc nbPropertyValues*(this: IGESDimenDimensionUnits): int {.noSideEffect,
    importcpp: "NbPropertyValues", header: "IGESDimen_DimensionUnits.hxx".}
proc secondaryDimenPosition*(this: IGESDimenDimensionUnits): int {.noSideEffect,
    importcpp: "SecondaryDimenPosition", header: "IGESDimen_DimensionUnits.hxx".}
proc unitsIndicator*(this: IGESDimenDimensionUnits): int {.noSideEffect,
    importcpp: "UnitsIndicator", header: "IGESDimen_DimensionUnits.hxx".}
proc characterSet*(this: IGESDimenDimensionUnits): int {.noSideEffect,
    importcpp: "CharacterSet", header: "IGESDimen_DimensionUnits.hxx".}
proc formatString*(this: IGESDimenDimensionUnits): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "FormatString", header: "IGESDimen_DimensionUnits.hxx".}
proc fractionFlag*(this: IGESDimenDimensionUnits): int {.noSideEffect,
    importcpp: "FractionFlag", header: "IGESDimen_DimensionUnits.hxx".}
proc precisionOrDenominator*(this: IGESDimenDimensionUnits): int {.noSideEffect,
    importcpp: "PrecisionOrDenominator", header: "IGESDimen_DimensionUnits.hxx".}
type
  IGESDimenDimensionUnitsbaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESDimen_DimensionUnits::get_type_name(@)",
                            header: "IGESDimen_DimensionUnits.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESDimen_DimensionUnits::get_type_descriptor(@)",
    header: "IGESDimen_DimensionUnits.hxx".}
proc dynamicType*(this: IGESDimenDimensionUnits): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESDimen_DimensionUnits.hxx".}
