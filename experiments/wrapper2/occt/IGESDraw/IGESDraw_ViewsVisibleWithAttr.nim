##  Created on: 1993-01-11
##  Created by: CKY / Contract Toubro-Larsen ( Niraj RANGWALA )
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
  IGESDraw_HArray1OfViewKindEntity, ../TColStd/TColStd_HArray1OfInteger,
  ../IGESBasic/IGESBasic_HArray1OfLineFontEntity,
  ../IGESGraph/IGESGraph_HArray1OfColor,
  ../IGESData/IGESData_HArray1OfIGESEntity, ../IGESData/IGESData_ViewKindEntity,
  ../Standard/Standard_Boolean, ../Standard/Standard_Integer

discard "forward decl of Standard_DimensionMismatch"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of IGESData_ViewKindEntity"
discard "forward decl of IGESData_LineFontEntity"
discard "forward decl of IGESGraph_Color"
discard "forward decl of IGESData_IGESEntity"
discard "forward decl of IGESDraw_ViewsVisibleWithAttr"
discard "forward decl of IGESDraw_ViewsVisibleWithAttr"
type
  Handle_IGESDraw_ViewsVisibleWithAttr* = handle[IGESDraw_ViewsVisibleWithAttr]

## ! defines IGESViewsVisibleWithAttr, Type <402>, Form <4>
## ! in package IGESDraw
## !
## ! This class is extension of Class ViewsVisible.  It is used
## ! for those entities that are visible in multiple views, but
## ! must have a different line font, color number, or
## ! line weight in each view.

type
  IGESDraw_ViewsVisibleWithAttr* {.importcpp: "IGESDraw_ViewsVisibleWithAttr",
                                  header: "IGESDraw_ViewsVisibleWithAttr.hxx",
                                  bycopy.} = object of IGESData_ViewKindEntity


proc constructIGESDraw_ViewsVisibleWithAttr*(): IGESDraw_ViewsVisibleWithAttr {.
    constructor, importcpp: "IGESDraw_ViewsVisibleWithAttr(@)",
    header: "IGESDraw_ViewsVisibleWithAttr.hxx".}
proc Init*(this: var IGESDraw_ViewsVisibleWithAttr;
          allViewEntities: handle[IGESDraw_HArray1OfViewKindEntity];
          allLineFonts: handle[TColStd_HArray1OfInteger];
          allLineDefinitions: handle[IGESBasic_HArray1OfLineFontEntity];
          allColorValues: handle[TColStd_HArray1OfInteger];
          allColorDefinitions: handle[IGESGraph_HArray1OfColor];
          allLineWeights: handle[TColStd_HArray1OfInteger];
          allDisplayEntities: handle[IGESData_HArray1OfIGESEntity]) {.
    importcpp: "Init", header: "IGESDraw_ViewsVisibleWithAttr.hxx".}
proc InitImplied*(this: var IGESDraw_ViewsVisibleWithAttr;
                 allDisplayEntity: handle[IGESData_HArray1OfIGESEntity]) {.
    importcpp: "InitImplied", header: "IGESDraw_ViewsVisibleWithAttr.hxx".}
proc IsSingle*(this: IGESDraw_ViewsVisibleWithAttr): Standard_Boolean {.
    noSideEffect, importcpp: "IsSingle",
    header: "IGESDraw_ViewsVisibleWithAttr.hxx".}
proc NbViews*(this: IGESDraw_ViewsVisibleWithAttr): Standard_Integer {.noSideEffect,
    importcpp: "NbViews", header: "IGESDraw_ViewsVisibleWithAttr.hxx".}
proc NbDisplayedEntities*(this: IGESDraw_ViewsVisibleWithAttr): Standard_Integer {.
    noSideEffect, importcpp: "NbDisplayedEntities",
    header: "IGESDraw_ViewsVisibleWithAttr.hxx".}
proc ViewItem*(this: IGESDraw_ViewsVisibleWithAttr; Index: Standard_Integer): handle[
    IGESData_ViewKindEntity] {.noSideEffect, importcpp: "ViewItem",
                              header: "IGESDraw_ViewsVisibleWithAttr.hxx".}
proc LineFontValue*(this: IGESDraw_ViewsVisibleWithAttr; Index: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "LineFontValue",
    header: "IGESDraw_ViewsVisibleWithAttr.hxx".}
proc IsFontDefinition*(this: IGESDraw_ViewsVisibleWithAttr; Index: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsFontDefinition",
    header: "IGESDraw_ViewsVisibleWithAttr.hxx".}
proc FontDefinition*(this: IGESDraw_ViewsVisibleWithAttr; Index: Standard_Integer): handle[
    IGESData_LineFontEntity] {.noSideEffect, importcpp: "FontDefinition",
                              header: "IGESDraw_ViewsVisibleWithAttr.hxx".}
proc ColorValue*(this: IGESDraw_ViewsVisibleWithAttr; Index: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "ColorValue",
    header: "IGESDraw_ViewsVisibleWithAttr.hxx".}
proc IsColorDefinition*(this: IGESDraw_ViewsVisibleWithAttr;
                       Index: Standard_Integer): Standard_Boolean {.noSideEffect,
    importcpp: "IsColorDefinition", header: "IGESDraw_ViewsVisibleWithAttr.hxx".}
proc ColorDefinition*(this: IGESDraw_ViewsVisibleWithAttr; Index: Standard_Integer): handle[
    IGESGraph_Color] {.noSideEffect, importcpp: "ColorDefinition",
                      header: "IGESDraw_ViewsVisibleWithAttr.hxx".}
proc LineWeightItem*(this: IGESDraw_ViewsVisibleWithAttr; Index: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "LineWeightItem",
    header: "IGESDraw_ViewsVisibleWithAttr.hxx".}
proc DisplayedEntity*(this: IGESDraw_ViewsVisibleWithAttr; Index: Standard_Integer): handle[
    IGESData_IGESEntity] {.noSideEffect, importcpp: "DisplayedEntity",
                          header: "IGESDraw_ViewsVisibleWithAttr.hxx".}
type
  IGESDraw_ViewsVisibleWithAttrbase_type* = IGESData_ViewKindEntity

proc get_type_name*(): cstring {.importcpp: "IGESDraw_ViewsVisibleWithAttr::get_type_name(@)",
                              header: "IGESDraw_ViewsVisibleWithAttr.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESDraw_ViewsVisibleWithAttr::get_type_descriptor(@)",
    header: "IGESDraw_ViewsVisibleWithAttr.hxx".}
proc DynamicType*(this: IGESDraw_ViewsVisibleWithAttr): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESDraw_ViewsVisibleWithAttr.hxx".}