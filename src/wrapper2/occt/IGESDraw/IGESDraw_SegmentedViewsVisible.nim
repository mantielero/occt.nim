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

import
  ../Standard/Standard, ../Standard/Standard_Type,
  IGESDraw_HArray1OfViewKindEntity, ../TColStd/TColStd_HArray1OfReal,
  ../TColStd/TColStd_HArray1OfInteger, ../IGESGraph/IGESGraph_HArray1OfColor,
  ../IGESBasic/IGESBasic_HArray1OfLineFontEntity,
  ../IGESData/IGESData_ViewKindEntity, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer, ../Standard/Standard_Real

discard "forward decl of Standard_DimensionMismatch"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of IGESData_ViewKindEntity"
discard "forward decl of IGESGraph_Color"
discard "forward decl of IGESData_LineFontEntity"
discard "forward decl of IGESDraw_SegmentedViewsVisible"
discard "forward decl of IGESDraw_SegmentedViewsVisible"
type
  Handle_IGESDraw_SegmentedViewsVisible* = handle[IGESDraw_SegmentedViewsVisible]

## ! defines IGESSegmentedViewsVisible, Type <402> Form <19>
## ! in package IGESDraw
## !
## ! Permits the association of display parameters with the
## ! segments of curves in a given view

type
  IGESDraw_SegmentedViewsVisible* {.importcpp: "IGESDraw_SegmentedViewsVisible", header: "IGESDraw_SegmentedViewsVisible.hxx",
                                   bycopy.} = object of IGESData_ViewKindEntity


proc constructIGESDraw_SegmentedViewsVisible*(): IGESDraw_SegmentedViewsVisible {.
    constructor, importcpp: "IGESDraw_SegmentedViewsVisible(@)",
    header: "IGESDraw_SegmentedViewsVisible.hxx".}
proc Init*(this: var IGESDraw_SegmentedViewsVisible;
          allViews: handle[IGESDraw_HArray1OfViewKindEntity];
          allBreakpointParameters: handle[TColStd_HArray1OfReal];
          allDisplayFlags: handle[TColStd_HArray1OfInteger];
          allColorValues: handle[TColStd_HArray1OfInteger];
          allColorDefinitions: handle[IGESGraph_HArray1OfColor];
          allLineFontValues: handle[TColStd_HArray1OfInteger];
          allLineFontDefinitions: handle[IGESBasic_HArray1OfLineFontEntity];
          allLineWeights: handle[TColStd_HArray1OfInteger]) {.importcpp: "Init",
    header: "IGESDraw_SegmentedViewsVisible.hxx".}
proc IsSingle*(this: IGESDraw_SegmentedViewsVisible): Standard_Boolean {.
    noSideEffect, importcpp: "IsSingle",
    header: "IGESDraw_SegmentedViewsVisible.hxx".}
proc NbViews*(this: IGESDraw_SegmentedViewsVisible): Standard_Integer {.
    noSideEffect, importcpp: "NbViews",
    header: "IGESDraw_SegmentedViewsVisible.hxx".}
proc NbSegmentBlocks*(this: IGESDraw_SegmentedViewsVisible): Standard_Integer {.
    noSideEffect, importcpp: "NbSegmentBlocks",
    header: "IGESDraw_SegmentedViewsVisible.hxx".}
proc ViewItem*(this: IGESDraw_SegmentedViewsVisible; ViewIndex: Standard_Integer): handle[
    IGESData_ViewKindEntity] {.noSideEffect, importcpp: "ViewItem",
                              header: "IGESDraw_SegmentedViewsVisible.hxx".}
proc BreakpointParameter*(this: IGESDraw_SegmentedViewsVisible;
                         BreakpointIndex: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "BreakpointParameter",
    header: "IGESDraw_SegmentedViewsVisible.hxx".}
proc DisplayFlag*(this: IGESDraw_SegmentedViewsVisible; FlagIndex: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "DisplayFlag",
    header: "IGESDraw_SegmentedViewsVisible.hxx".}
proc IsColorDefinition*(this: IGESDraw_SegmentedViewsVisible;
                       ColorIndex: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsColorDefinition",
    header: "IGESDraw_SegmentedViewsVisible.hxx".}
proc ColorValue*(this: IGESDraw_SegmentedViewsVisible; ColorIndex: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "ColorValue",
    header: "IGESDraw_SegmentedViewsVisible.hxx".}
proc ColorDefinition*(this: IGESDraw_SegmentedViewsVisible;
                     ColorIndex: Standard_Integer): handle[IGESGraph_Color] {.
    noSideEffect, importcpp: "ColorDefinition",
    header: "IGESDraw_SegmentedViewsVisible.hxx".}
proc IsFontDefinition*(this: IGESDraw_SegmentedViewsVisible;
                      FontIndex: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsFontDefinition",
    header: "IGESDraw_SegmentedViewsVisible.hxx".}
proc LineFontValue*(this: IGESDraw_SegmentedViewsVisible;
                   FontIndex: Standard_Integer): Standard_Integer {.noSideEffect,
    importcpp: "LineFontValue", header: "IGESDraw_SegmentedViewsVisible.hxx".}
proc LineFontDefinition*(this: IGESDraw_SegmentedViewsVisible;
                        FontIndex: Standard_Integer): handle[
    IGESData_LineFontEntity] {.noSideEffect, importcpp: "LineFontDefinition",
                              header: "IGESDraw_SegmentedViewsVisible.hxx".}
proc LineWeightItem*(this: IGESDraw_SegmentedViewsVisible;
                    WeightIndex: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "LineWeightItem",
    header: "IGESDraw_SegmentedViewsVisible.hxx".}
type
  IGESDraw_SegmentedViewsVisiblebase_type* = IGESData_ViewKindEntity

proc get_type_name*(): cstring {.importcpp: "IGESDraw_SegmentedViewsVisible::get_type_name(@)",
                              header: "IGESDraw_SegmentedViewsVisible.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESDraw_SegmentedViewsVisible::get_type_descriptor(@)",
    header: "IGESDraw_SegmentedViewsVisible.hxx".}
proc DynamicType*(this: IGESDraw_SegmentedViewsVisible): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESDraw_SegmentedViewsVisible.hxx".}