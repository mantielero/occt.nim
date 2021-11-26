##  Created on: 1993-01-09
##  Created by: CKY / Contract Toubro-Larsen ( Arun MENON )
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
discard "forward decl of Standard_DimensionMismatch"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of IGESDimen_DimensionDisplayData"
discard "forward decl of IGESDimen_DimensionDisplayData"
type
  HandleC1C1* = Handle[IGESDimenDimensionDisplayData]

## ! Defines IGES Dimension Display Data, Type <406> Form <30>,
## ! in package IGESDimen
## ! The Dimensional Display Data Property is optional but when
## ! present must be referenced by a dimension entity.
## ! The information it contains could be extracted from the text,
## ! leader and witness line data with difficulty.

type
  IGESDimenDimensionDisplayData* {.importcpp: "IGESDimen_DimensionDisplayData",
                                  header: "IGESDimen_DimensionDisplayData.hxx",
                                  bycopy.} = object of IGESDataIGESEntity


proc constructIGESDimenDimensionDisplayData*(): IGESDimenDimensionDisplayData {.
    constructor, importcpp: "IGESDimen_DimensionDisplayData(@)",
    header: "IGESDimen_DimensionDisplayData.hxx".}
proc init*(this: var IGESDimenDimensionDisplayData; numProps: cint; aDimType: cint;
          aLabelPos: cint; aCharSet: cint; aString: Handle[TCollectionHAsciiString];
          aSymbol: cint; anAng: cfloat; anAlign: cint; aLevel: cint; aPlace: cint;
          anOrient: cint; initVal: cfloat; notes: Handle[TColStdHArray1OfInteger];
          startInd: Handle[TColStdHArray1OfInteger];
          endInd: Handle[TColStdHArray1OfInteger]) {.importcpp: "Init",
    header: "IGESDimen_DimensionDisplayData.hxx".}
proc nbPropertyValues*(this: IGESDimenDimensionDisplayData): cint {.noSideEffect,
    importcpp: "NbPropertyValues", header: "IGESDimen_DimensionDisplayData.hxx".}
proc dimensionType*(this: IGESDimenDimensionDisplayData): cint {.noSideEffect,
    importcpp: "DimensionType", header: "IGESDimen_DimensionDisplayData.hxx".}
proc labelPosition*(this: IGESDimenDimensionDisplayData): cint {.noSideEffect,
    importcpp: "LabelPosition", header: "IGESDimen_DimensionDisplayData.hxx".}
proc characterSet*(this: IGESDimenDimensionDisplayData): cint {.noSideEffect,
    importcpp: "CharacterSet", header: "IGESDimen_DimensionDisplayData.hxx".}
proc lString*(this: IGESDimenDimensionDisplayData): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "LString",
    header: "IGESDimen_DimensionDisplayData.hxx".}
proc decimalSymbol*(this: IGESDimenDimensionDisplayData): cint {.noSideEffect,
    importcpp: "DecimalSymbol", header: "IGESDimen_DimensionDisplayData.hxx".}
proc witnessLineAngle*(this: IGESDimenDimensionDisplayData): cfloat {.noSideEffect,
    importcpp: "WitnessLineAngle", header: "IGESDimen_DimensionDisplayData.hxx".}
proc textAlignment*(this: IGESDimenDimensionDisplayData): cint {.noSideEffect,
    importcpp: "TextAlignment", header: "IGESDimen_DimensionDisplayData.hxx".}
proc textLevel*(this: IGESDimenDimensionDisplayData): cint {.noSideEffect,
    importcpp: "TextLevel", header: "IGESDimen_DimensionDisplayData.hxx".}
proc textPlacement*(this: IGESDimenDimensionDisplayData): cint {.noSideEffect,
    importcpp: "TextPlacement", header: "IGESDimen_DimensionDisplayData.hxx".}
proc arrowHeadOrientation*(this: IGESDimenDimensionDisplayData): cint {.
    noSideEffect, importcpp: "ArrowHeadOrientation",
    header: "IGESDimen_DimensionDisplayData.hxx".}
proc initialValue*(this: IGESDimenDimensionDisplayData): cfloat {.noSideEffect,
    importcpp: "InitialValue", header: "IGESDimen_DimensionDisplayData.hxx".}
proc nbSupplementaryNotes*(this: IGESDimenDimensionDisplayData): cint {.
    noSideEffect, importcpp: "NbSupplementaryNotes",
    header: "IGESDimen_DimensionDisplayData.hxx".}
proc supplementaryNote*(this: IGESDimenDimensionDisplayData; index: cint): cint {.
    noSideEffect, importcpp: "SupplementaryNote",
    header: "IGESDimen_DimensionDisplayData.hxx".}
proc startIndex*(this: IGESDimenDimensionDisplayData; index: cint): cint {.
    noSideEffect, importcpp: "StartIndex",
    header: "IGESDimen_DimensionDisplayData.hxx".}
proc endIndex*(this: IGESDimenDimensionDisplayData; index: cint): cint {.noSideEffect,
    importcpp: "EndIndex", header: "IGESDimen_DimensionDisplayData.hxx".}
type
  IGESDimenDimensionDisplayDatabaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESDimen_DimensionDisplayData::get_type_name(@)",
                            header: "IGESDimen_DimensionDisplayData.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESDimen_DimensionDisplayData::get_type_descriptor(@)",
    header: "IGESDimen_DimensionDisplayData.hxx".}
proc dynamicType*(this: IGESDimenDimensionDisplayData): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESDimen_DimensionDisplayData.hxx".}

























