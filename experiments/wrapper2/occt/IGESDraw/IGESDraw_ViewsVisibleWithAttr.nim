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

discard "forward decl of Standard_DimensionMismatch"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of IGESData_ViewKindEntity"
discard "forward decl of IGESData_LineFontEntity"
discard "forward decl of IGESGraph_Color"
discard "forward decl of IGESData_IGESEntity"
discard "forward decl of IGESDraw_ViewsVisibleWithAttr"
discard "forward decl of IGESDraw_ViewsVisibleWithAttr"
type
  HandleIGESDrawViewsVisibleWithAttr* = Handle[IGESDrawViewsVisibleWithAttr]

## ! defines IGESViewsVisibleWithAttr, Type <402>, Form <4>
## ! in package IGESDraw
## !
## ! This class is extension of Class ViewsVisible.  It is used
## ! for those entities that are visible in multiple views, but
## ! must have a different line font, color number, or
## ! line weight in each view.

type
  IGESDrawViewsVisibleWithAttr* {.importcpp: "IGESDraw_ViewsVisibleWithAttr",
                                 header: "IGESDraw_ViewsVisibleWithAttr.hxx",
                                 bycopy.} = object of IGESDataViewKindEntity


proc constructIGESDrawViewsVisibleWithAttr*(): IGESDrawViewsVisibleWithAttr {.
    constructor, importcpp: "IGESDraw_ViewsVisibleWithAttr(@)",
    header: "IGESDraw_ViewsVisibleWithAttr.hxx".}
proc init*(this: var IGESDrawViewsVisibleWithAttr;
          allViewEntities: Handle[IGESDrawHArray1OfViewKindEntity];
          allLineFonts: Handle[TColStdHArray1OfInteger];
          allLineDefinitions: Handle[IGESBasicHArray1OfLineFontEntity];
          allColorValues: Handle[TColStdHArray1OfInteger];
          allColorDefinitions: Handle[IGESGraphHArray1OfColor];
          allLineWeights: Handle[TColStdHArray1OfInteger];
          allDisplayEntities: Handle[IGESDataHArray1OfIGESEntity]) {.
    importcpp: "Init", header: "IGESDraw_ViewsVisibleWithAttr.hxx".}
proc initImplied*(this: var IGESDrawViewsVisibleWithAttr;
                 allDisplayEntity: Handle[IGESDataHArray1OfIGESEntity]) {.
    importcpp: "InitImplied", header: "IGESDraw_ViewsVisibleWithAttr.hxx".}
proc isSingle*(this: IGESDrawViewsVisibleWithAttr): bool {.noSideEffect,
    importcpp: "IsSingle", header: "IGESDraw_ViewsVisibleWithAttr.hxx".}
proc nbViews*(this: IGESDrawViewsVisibleWithAttr): int {.noSideEffect,
    importcpp: "NbViews", header: "IGESDraw_ViewsVisibleWithAttr.hxx".}
proc nbDisplayedEntities*(this: IGESDrawViewsVisibleWithAttr): int {.noSideEffect,
    importcpp: "NbDisplayedEntities", header: "IGESDraw_ViewsVisibleWithAttr.hxx".}
proc viewItem*(this: IGESDrawViewsVisibleWithAttr; index: int): Handle[
    IGESDataViewKindEntity] {.noSideEffect, importcpp: "ViewItem",
                             header: "IGESDraw_ViewsVisibleWithAttr.hxx".}
proc lineFontValue*(this: IGESDrawViewsVisibleWithAttr; index: int): int {.
    noSideEffect, importcpp: "LineFontValue",
    header: "IGESDraw_ViewsVisibleWithAttr.hxx".}
proc isFontDefinition*(this: IGESDrawViewsVisibleWithAttr; index: int): bool {.
    noSideEffect, importcpp: "IsFontDefinition",
    header: "IGESDraw_ViewsVisibleWithAttr.hxx".}
proc fontDefinition*(this: IGESDrawViewsVisibleWithAttr; index: int): Handle[
    IGESDataLineFontEntity] {.noSideEffect, importcpp: "FontDefinition",
                             header: "IGESDraw_ViewsVisibleWithAttr.hxx".}
proc colorValue*(this: IGESDrawViewsVisibleWithAttr; index: int): int {.noSideEffect,
    importcpp: "ColorValue", header: "IGESDraw_ViewsVisibleWithAttr.hxx".}
proc isColorDefinition*(this: IGESDrawViewsVisibleWithAttr; index: int): bool {.
    noSideEffect, importcpp: "IsColorDefinition",
    header: "IGESDraw_ViewsVisibleWithAttr.hxx".}
proc colorDefinition*(this: IGESDrawViewsVisibleWithAttr; index: int): Handle[
    IGESGraphColor] {.noSideEffect, importcpp: "ColorDefinition",
                     header: "IGESDraw_ViewsVisibleWithAttr.hxx".}
proc lineWeightItem*(this: IGESDrawViewsVisibleWithAttr; index: int): int {.
    noSideEffect, importcpp: "LineWeightItem",
    header: "IGESDraw_ViewsVisibleWithAttr.hxx".}
proc displayedEntity*(this: IGESDrawViewsVisibleWithAttr; index: int): Handle[
    IGESDataIGESEntity] {.noSideEffect, importcpp: "DisplayedEntity",
                         header: "IGESDraw_ViewsVisibleWithAttr.hxx".}
type
  IGESDrawViewsVisibleWithAttrbaseType* = IGESDataViewKindEntity

proc getTypeName*(): cstring {.importcpp: "IGESDraw_ViewsVisibleWithAttr::get_type_name(@)",
                            header: "IGESDraw_ViewsVisibleWithAttr.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESDraw_ViewsVisibleWithAttr::get_type_descriptor(@)",
    header: "IGESDraw_ViewsVisibleWithAttr.hxx".}
proc dynamicType*(this: IGESDrawViewsVisibleWithAttr): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESDraw_ViewsVisibleWithAttr.hxx".}
