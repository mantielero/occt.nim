##  Created on: 1993-01-09
##  Created by: CKY / Contract Toubro-Larsen ( TCD )
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

discard "forward decl of Standard_DimensionMismatch"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of IGESData_ViewKindEntity"
discard "forward decl of IGESGraph_Color"
discard "forward decl of IGESData_LineFontEntity"
discard "forward decl of IGESDraw_SegmentedViewsVisible"
discard "forward decl of IGESDraw_SegmentedViewsVisible"
type
  HandleIGESDrawSegmentedViewsVisible* = Handle[IGESDrawSegmentedViewsVisible]

## ! defines IGESSegmentedViewsVisible, Type <402> Form <19>
## ! in package IGESDraw
## !
## ! Permits the association of display parameters with the
## ! segments of curves in a given view

type
  IGESDrawSegmentedViewsVisible* {.importcpp: "IGESDraw_SegmentedViewsVisible",
                                  header: "IGESDraw_SegmentedViewsVisible.hxx",
                                  bycopy.} = object of IGESDataViewKindEntity


proc constructIGESDrawSegmentedViewsVisible*(): IGESDrawSegmentedViewsVisible {.
    constructor, importcpp: "IGESDraw_SegmentedViewsVisible(@)",
    header: "IGESDraw_SegmentedViewsVisible.hxx".}
proc init*(this: var IGESDrawSegmentedViewsVisible;
          allViews: Handle[IGESDrawHArray1OfViewKindEntity];
          allBreakpointParameters: Handle[TColStdHArray1OfReal];
          allDisplayFlags: Handle[TColStdHArray1OfInteger];
          allColorValues: Handle[TColStdHArray1OfInteger];
          allColorDefinitions: Handle[IGESGraphHArray1OfColor];
          allLineFontValues: Handle[TColStdHArray1OfInteger];
          allLineFontDefinitions: Handle[IGESBasicHArray1OfLineFontEntity];
          allLineWeights: Handle[TColStdHArray1OfInteger]) {.importcpp: "Init",
    header: "IGESDraw_SegmentedViewsVisible.hxx".}
proc isSingle*(this: IGESDrawSegmentedViewsVisible): StandardBoolean {.noSideEffect,
    importcpp: "IsSingle", header: "IGESDraw_SegmentedViewsVisible.hxx".}
proc nbViews*(this: IGESDrawSegmentedViewsVisible): StandardInteger {.noSideEffect,
    importcpp: "NbViews", header: "IGESDraw_SegmentedViewsVisible.hxx".}
proc nbSegmentBlocks*(this: IGESDrawSegmentedViewsVisible): StandardInteger {.
    noSideEffect, importcpp: "NbSegmentBlocks",
    header: "IGESDraw_SegmentedViewsVisible.hxx".}
proc viewItem*(this: IGESDrawSegmentedViewsVisible; viewIndex: StandardInteger): Handle[
    IGESDataViewKindEntity] {.noSideEffect, importcpp: "ViewItem",
                             header: "IGESDraw_SegmentedViewsVisible.hxx".}
proc breakpointParameter*(this: IGESDrawSegmentedViewsVisible;
                         breakpointIndex: StandardInteger): StandardReal {.
    noSideEffect, importcpp: "BreakpointParameter",
    header: "IGESDraw_SegmentedViewsVisible.hxx".}
proc displayFlag*(this: IGESDrawSegmentedViewsVisible; flagIndex: StandardInteger): StandardInteger {.
    noSideEffect, importcpp: "DisplayFlag",
    header: "IGESDraw_SegmentedViewsVisible.hxx".}
proc isColorDefinition*(this: IGESDrawSegmentedViewsVisible;
                       colorIndex: StandardInteger): StandardBoolean {.
    noSideEffect, importcpp: "IsColorDefinition",
    header: "IGESDraw_SegmentedViewsVisible.hxx".}
proc colorValue*(this: IGESDrawSegmentedViewsVisible; colorIndex: StandardInteger): StandardInteger {.
    noSideEffect, importcpp: "ColorValue",
    header: "IGESDraw_SegmentedViewsVisible.hxx".}
proc colorDefinition*(this: IGESDrawSegmentedViewsVisible;
                     colorIndex: StandardInteger): Handle[IGESGraphColor] {.
    noSideEffect, importcpp: "ColorDefinition",
    header: "IGESDraw_SegmentedViewsVisible.hxx".}
proc isFontDefinition*(this: IGESDrawSegmentedViewsVisible;
                      fontIndex: StandardInteger): StandardBoolean {.noSideEffect,
    importcpp: "IsFontDefinition", header: "IGESDraw_SegmentedViewsVisible.hxx".}
proc lineFontValue*(this: IGESDrawSegmentedViewsVisible; fontIndex: StandardInteger): StandardInteger {.
    noSideEffect, importcpp: "LineFontValue",
    header: "IGESDraw_SegmentedViewsVisible.hxx".}
proc lineFontDefinition*(this: IGESDrawSegmentedViewsVisible;
                        fontIndex: StandardInteger): Handle[IGESDataLineFontEntity] {.
    noSideEffect, importcpp: "LineFontDefinition",
    header: "IGESDraw_SegmentedViewsVisible.hxx".}
proc lineWeightItem*(this: IGESDrawSegmentedViewsVisible;
                    weightIndex: StandardInteger): StandardInteger {.noSideEffect,
    importcpp: "LineWeightItem", header: "IGESDraw_SegmentedViewsVisible.hxx".}
type
  IGESDrawSegmentedViewsVisiblebaseType* = IGESDataViewKindEntity

proc getTypeName*(): cstring {.importcpp: "IGESDraw_SegmentedViewsVisible::get_type_name(@)",
                            header: "IGESDraw_SegmentedViewsVisible.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESDraw_SegmentedViewsVisible::get_type_descriptor(@)",
    header: "IGESDraw_SegmentedViewsVisible.hxx".}
proc dynamicType*(this: IGESDrawSegmentedViewsVisible): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESDraw_SegmentedViewsVisible.hxx".}

