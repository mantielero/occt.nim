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
  IGESDraw_HArray1OfViewKindEntity, ../IGESData/IGESData_HArray1OfIGESEntity,
  ../IGESData/IGESData_ViewKindEntity, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer

discard "forward decl of Standard_OutOfRange"
discard "forward decl of IGESData_ViewKindEntity"
discard "forward decl of IGESData_IGESEntity"
discard "forward decl of IGESDraw_ViewsVisible"
discard "forward decl of IGESDraw_ViewsVisible"
type
  Handle_IGESDraw_ViewsVisible* = handle[IGESDraw_ViewsVisible]

## ! Defines IGESViewsVisible, Type <402>, Form <3>
## ! in package IGESDraw
## !
## ! If an entity is to be displayed in more than one views,
## ! this class instance is used, which contains the Visible
## ! views and the associated entity Displays.

type
  IGESDraw_ViewsVisible* {.importcpp: "IGESDraw_ViewsVisible",
                          header: "IGESDraw_ViewsVisible.hxx", bycopy.} = object of IGESData_ViewKindEntity


proc constructIGESDraw_ViewsVisible*(): IGESDraw_ViewsVisible {.constructor,
    importcpp: "IGESDraw_ViewsVisible(@)", header: "IGESDraw_ViewsVisible.hxx".}
proc Init*(this: var IGESDraw_ViewsVisible;
          allViewEntities: handle[IGESDraw_HArray1OfViewKindEntity];
          allDisplayEntity: handle[IGESData_HArray1OfIGESEntity]) {.
    importcpp: "Init", header: "IGESDraw_ViewsVisible.hxx".}
proc InitImplied*(this: var IGESDraw_ViewsVisible;
                 allDisplayEntity: handle[IGESData_HArray1OfIGESEntity]) {.
    importcpp: "InitImplied", header: "IGESDraw_ViewsVisible.hxx".}
proc IsSingle*(this: IGESDraw_ViewsVisible): Standard_Boolean {.noSideEffect,
    importcpp: "IsSingle", header: "IGESDraw_ViewsVisible.hxx".}
proc NbViews*(this: IGESDraw_ViewsVisible): Standard_Integer {.noSideEffect,
    importcpp: "NbViews", header: "IGESDraw_ViewsVisible.hxx".}
proc NbDisplayedEntities*(this: IGESDraw_ViewsVisible): Standard_Integer {.
    noSideEffect, importcpp: "NbDisplayedEntities",
    header: "IGESDraw_ViewsVisible.hxx".}
proc ViewItem*(this: IGESDraw_ViewsVisible; Index: Standard_Integer): handle[
    IGESData_ViewKindEntity] {.noSideEffect, importcpp: "ViewItem",
                              header: "IGESDraw_ViewsVisible.hxx".}
proc DisplayedEntity*(this: IGESDraw_ViewsVisible; Index: Standard_Integer): handle[
    IGESData_IGESEntity] {.noSideEffect, importcpp: "DisplayedEntity",
                          header: "IGESDraw_ViewsVisible.hxx".}
type
  IGESDraw_ViewsVisiblebase_type* = IGESData_ViewKindEntity

proc get_type_name*(): cstring {.importcpp: "IGESDraw_ViewsVisible::get_type_name(@)",
                              header: "IGESDraw_ViewsVisible.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESDraw_ViewsVisible::get_type_descriptor(@)",
    header: "IGESDraw_ViewsVisible.hxx".}
proc DynamicType*(this: IGESDraw_ViewsVisible): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESDraw_ViewsVisible.hxx".}