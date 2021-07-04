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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Integer,
  ../Standard/Standard_Real, ../TColStd/TColStd_HArray1OfInteger,
  ../IGESData/IGESData_IGESEntity

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of Standard_DimensionMismatch"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of IGESDimen_DimensionDisplayData"
discard "forward decl of IGESDimen_DimensionDisplayData"
type
  Handle_IGESDimen_DimensionDisplayData* = handle[IGESDimen_DimensionDisplayData]

## ! Defines IGES Dimension Display Data, Type <406> Form <30>,
## ! in package IGESDimen
## ! The Dimensional Display Data Property is optional but when
## ! present must be referenced by a dimension entity.
## ! The information it contains could be extracted from the text,
## ! leader and witness line data with difficulty.

type
  IGESDimen_DimensionDisplayData* {.importcpp: "IGESDimen_DimensionDisplayData", header: "IGESDimen_DimensionDisplayData.hxx",
                                   bycopy.} = object of IGESData_IGESEntity


proc constructIGESDimen_DimensionDisplayData*(): IGESDimen_DimensionDisplayData {.
    constructor, importcpp: "IGESDimen_DimensionDisplayData(@)",
    header: "IGESDimen_DimensionDisplayData.hxx".}
proc Init*(this: var IGESDimen_DimensionDisplayData; numProps: Standard_Integer;
          aDimType: Standard_Integer; aLabelPos: Standard_Integer;
          aCharSet: Standard_Integer; aString: handle[TCollection_HAsciiString];
          aSymbol: Standard_Integer; anAng: Standard_Real;
          anAlign: Standard_Integer; aLevel: Standard_Integer;
          aPlace: Standard_Integer; anOrient: Standard_Integer;
          initVal: Standard_Real; notes: handle[TColStd_HArray1OfInteger];
          startInd: handle[TColStd_HArray1OfInteger];
          endInd: handle[TColStd_HArray1OfInteger]) {.importcpp: "Init",
    header: "IGESDimen_DimensionDisplayData.hxx".}
proc NbPropertyValues*(this: IGESDimen_DimensionDisplayData): Standard_Integer {.
    noSideEffect, importcpp: "NbPropertyValues",
    header: "IGESDimen_DimensionDisplayData.hxx".}
proc DimensionType*(this: IGESDimen_DimensionDisplayData): Standard_Integer {.
    noSideEffect, importcpp: "DimensionType",
    header: "IGESDimen_DimensionDisplayData.hxx".}
proc LabelPosition*(this: IGESDimen_DimensionDisplayData): Standard_Integer {.
    noSideEffect, importcpp: "LabelPosition",
    header: "IGESDimen_DimensionDisplayData.hxx".}
proc CharacterSet*(this: IGESDimen_DimensionDisplayData): Standard_Integer {.
    noSideEffect, importcpp: "CharacterSet",
    header: "IGESDimen_DimensionDisplayData.hxx".}
proc LString*(this: IGESDimen_DimensionDisplayData): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "LString",
                               header: "IGESDimen_DimensionDisplayData.hxx".}
proc DecimalSymbol*(this: IGESDimen_DimensionDisplayData): Standard_Integer {.
    noSideEffect, importcpp: "DecimalSymbol",
    header: "IGESDimen_DimensionDisplayData.hxx".}
proc WitnessLineAngle*(this: IGESDimen_DimensionDisplayData): Standard_Real {.
    noSideEffect, importcpp: "WitnessLineAngle",
    header: "IGESDimen_DimensionDisplayData.hxx".}
proc TextAlignment*(this: IGESDimen_DimensionDisplayData): Standard_Integer {.
    noSideEffect, importcpp: "TextAlignment",
    header: "IGESDimen_DimensionDisplayData.hxx".}
proc TextLevel*(this: IGESDimen_DimensionDisplayData): Standard_Integer {.
    noSideEffect, importcpp: "TextLevel",
    header: "IGESDimen_DimensionDisplayData.hxx".}
proc TextPlacement*(this: IGESDimen_DimensionDisplayData): Standard_Integer {.
    noSideEffect, importcpp: "TextPlacement",
    header: "IGESDimen_DimensionDisplayData.hxx".}
proc ArrowHeadOrientation*(this: IGESDimen_DimensionDisplayData): Standard_Integer {.
    noSideEffect, importcpp: "ArrowHeadOrientation",
    header: "IGESDimen_DimensionDisplayData.hxx".}
proc InitialValue*(this: IGESDimen_DimensionDisplayData): Standard_Real {.
    noSideEffect, importcpp: "InitialValue",
    header: "IGESDimen_DimensionDisplayData.hxx".}
proc NbSupplementaryNotes*(this: IGESDimen_DimensionDisplayData): Standard_Integer {.
    noSideEffect, importcpp: "NbSupplementaryNotes",
    header: "IGESDimen_DimensionDisplayData.hxx".}
proc SupplementaryNote*(this: IGESDimen_DimensionDisplayData;
                       Index: Standard_Integer): Standard_Integer {.noSideEffect,
    importcpp: "SupplementaryNote", header: "IGESDimen_DimensionDisplayData.hxx".}
proc StartIndex*(this: IGESDimen_DimensionDisplayData; Index: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "StartIndex",
    header: "IGESDimen_DimensionDisplayData.hxx".}
proc EndIndex*(this: IGESDimen_DimensionDisplayData; Index: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "EndIndex",
    header: "IGESDimen_DimensionDisplayData.hxx".}
type
  IGESDimen_DimensionDisplayDatabase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESDimen_DimensionDisplayData::get_type_name(@)",
                              header: "IGESDimen_DimensionDisplayData.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESDimen_DimensionDisplayData::get_type_descriptor(@)",
    header: "IGESDimen_DimensionDisplayData.hxx".}
proc DynamicType*(this: IGESDimen_DimensionDisplayData): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESDimen_DimensionDisplayData.hxx".}