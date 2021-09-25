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
discard "forward decl of gp_Pnt"
discard "forward decl of IGESDimen_LeaderArrow"
discard "forward decl of IGESData_IGESEntity"
discard "forward decl of IGESDraw_LabelDisplay"
discard "forward decl of IGESDraw_LabelDisplay"
type
  HandleIGESDrawLabelDisplay* = Handle[IGESDrawLabelDisplay]

## ! defines IGESLabelDisplay, Type <402> Form <5>
## ! in package IGESDraw
## !
## ! Permits one or more displays for the
## ! entity labels of an entity

type
  IGESDrawLabelDisplay* {.importcpp: "IGESDraw_LabelDisplay",
                         header: "IGESDraw_LabelDisplay.hxx", bycopy.} = object of IGESDataLabelDisplayEntity


proc constructIGESDrawLabelDisplay*(): IGESDrawLabelDisplay {.constructor,
    importcpp: "IGESDraw_LabelDisplay(@)", header: "IGESDraw_LabelDisplay.hxx".}
proc init*(this: var IGESDrawLabelDisplay;
          allViews: Handle[IGESDrawHArray1OfViewKindEntity];
          allTextLocations: Handle[TColgpHArray1OfXYZ];
          allLeaderEntities: Handle[IGESDimenHArray1OfLeaderArrow];
          allLabelLevels: Handle[TColStdHArray1OfInteger];
          allDisplayedEntities: Handle[IGESDataHArray1OfIGESEntity]) {.
    importcpp: "Init", header: "IGESDraw_LabelDisplay.hxx".}
proc nbLabels*(this: IGESDrawLabelDisplay): int {.noSideEffect,
    importcpp: "NbLabels", header: "IGESDraw_LabelDisplay.hxx".}
proc viewItem*(this: IGESDrawLabelDisplay; viewIndex: int): Handle[
    IGESDataViewKindEntity] {.noSideEffect, importcpp: "ViewItem",
                             header: "IGESDraw_LabelDisplay.hxx".}
proc textLocation*(this: IGESDrawLabelDisplay; viewIndex: int): Pnt {.noSideEffect,
    importcpp: "TextLocation", header: "IGESDraw_LabelDisplay.hxx".}
proc leaderEntity*(this: IGESDrawLabelDisplay; viewIndex: int): Handle[
    IGESDimenLeaderArrow] {.noSideEffect, importcpp: "LeaderEntity",
                           header: "IGESDraw_LabelDisplay.hxx".}
proc labelLevel*(this: IGESDrawLabelDisplay; viewIndex: int): int {.noSideEffect,
    importcpp: "LabelLevel", header: "IGESDraw_LabelDisplay.hxx".}
proc displayedEntity*(this: IGESDrawLabelDisplay; entityIndex: int): Handle[
    IGESDataIGESEntity] {.noSideEffect, importcpp: "DisplayedEntity",
                         header: "IGESDraw_LabelDisplay.hxx".}
proc transformedTextLocation*(this: IGESDrawLabelDisplay; viewIndex: int): Pnt {.
    noSideEffect, importcpp: "TransformedTextLocation",
    header: "IGESDraw_LabelDisplay.hxx".}
type
  IGESDrawLabelDisplaybaseType* = IGESDataLabelDisplayEntity

proc getTypeName*(): cstring {.importcpp: "IGESDraw_LabelDisplay::get_type_name(@)",
                            header: "IGESDraw_LabelDisplay.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESDraw_LabelDisplay::get_type_descriptor(@)",
    header: "IGESDraw_LabelDisplay.hxx".}
proc dynamicType*(this: IGESDrawLabelDisplay): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESDraw_LabelDisplay.hxx".}
