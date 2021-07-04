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
  IGESDraw_HArray1OfViewKindEntity, ../TColgp/TColgp_HArray1OfXYZ,
  ../IGESDimen/IGESDimen_HArray1OfLeaderArrow,
  ../TColStd/TColStd_HArray1OfInteger, ../IGESData/IGESData_HArray1OfIGESEntity,
  ../IGESData/IGESData_LabelDisplayEntity, ../Standard/Standard_Integer

discard "forward decl of Standard_DimensionMismatch"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of IGESData_ViewKindEntity"
discard "forward decl of gp_Pnt"
discard "forward decl of IGESDimen_LeaderArrow"
discard "forward decl of IGESData_IGESEntity"
discard "forward decl of IGESDraw_LabelDisplay"
discard "forward decl of IGESDraw_LabelDisplay"
type
  Handle_IGESDraw_LabelDisplay* = handle[IGESDraw_LabelDisplay]

## ! defines IGESLabelDisplay, Type <402> Form <5>
## ! in package IGESDraw
## !
## ! Permits one or more displays for the
## ! entity labels of an entity

type
  IGESDraw_LabelDisplay* {.importcpp: "IGESDraw_LabelDisplay",
                          header: "IGESDraw_LabelDisplay.hxx", bycopy.} = object of IGESData_LabelDisplayEntity


proc constructIGESDraw_LabelDisplay*(): IGESDraw_LabelDisplay {.constructor,
    importcpp: "IGESDraw_LabelDisplay(@)", header: "IGESDraw_LabelDisplay.hxx".}
proc Init*(this: var IGESDraw_LabelDisplay;
          allViews: handle[IGESDraw_HArray1OfViewKindEntity];
          allTextLocations: handle[TColgp_HArray1OfXYZ];
          allLeaderEntities: handle[IGESDimen_HArray1OfLeaderArrow];
          allLabelLevels: handle[TColStd_HArray1OfInteger];
          allDisplayedEntities: handle[IGESData_HArray1OfIGESEntity]) {.
    importcpp: "Init", header: "IGESDraw_LabelDisplay.hxx".}
proc NbLabels*(this: IGESDraw_LabelDisplay): Standard_Integer {.noSideEffect,
    importcpp: "NbLabels", header: "IGESDraw_LabelDisplay.hxx".}
proc ViewItem*(this: IGESDraw_LabelDisplay; ViewIndex: Standard_Integer): handle[
    IGESData_ViewKindEntity] {.noSideEffect, importcpp: "ViewItem",
                              header: "IGESDraw_LabelDisplay.hxx".}
proc TextLocation*(this: IGESDraw_LabelDisplay; ViewIndex: Standard_Integer): gp_Pnt {.
    noSideEffect, importcpp: "TextLocation", header: "IGESDraw_LabelDisplay.hxx".}
proc LeaderEntity*(this: IGESDraw_LabelDisplay; ViewIndex: Standard_Integer): handle[
    IGESDimen_LeaderArrow] {.noSideEffect, importcpp: "LeaderEntity",
                            header: "IGESDraw_LabelDisplay.hxx".}
proc LabelLevel*(this: IGESDraw_LabelDisplay; ViewIndex: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "LabelLevel", header: "IGESDraw_LabelDisplay.hxx".}
proc DisplayedEntity*(this: IGESDraw_LabelDisplay; EntityIndex: Standard_Integer): handle[
    IGESData_IGESEntity] {.noSideEffect, importcpp: "DisplayedEntity",
                          header: "IGESDraw_LabelDisplay.hxx".}
proc TransformedTextLocation*(this: IGESDraw_LabelDisplay;
                             ViewIndex: Standard_Integer): gp_Pnt {.noSideEffect,
    importcpp: "TransformedTextLocation", header: "IGESDraw_LabelDisplay.hxx".}
type
  IGESDraw_LabelDisplaybase_type* = IGESData_LabelDisplayEntity

proc get_type_name*(): cstring {.importcpp: "IGESDraw_LabelDisplay::get_type_name(@)",
                              header: "IGESDraw_LabelDisplay.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESDraw_LabelDisplay::get_type_descriptor(@)",
    header: "IGESDraw_LabelDisplay.hxx".}
proc DynamicType*(this: IGESDraw_LabelDisplay): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESDraw_LabelDisplay.hxx".}