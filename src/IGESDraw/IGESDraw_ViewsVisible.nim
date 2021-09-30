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

discard "forward decl of Standard_OutOfRange"
discard "forward decl of IGESData_ViewKindEntity"
discard "forward decl of IGESData_IGESEntity"
discard "forward decl of IGESDraw_ViewsVisible"
discard "forward decl of IGESDraw_ViewsVisible"
type
  HandleC1C1* = Handle[IGESDrawViewsVisible]

## ! Defines IGESViewsVisible, Type <402>, Form <3>
## ! in package IGESDraw
## !
## ! If an entity is to be displayed in more than one views,
## ! this class instance is used, which contains the Visible
## ! views and the associated entity Displays.

type
  IGESDrawViewsVisible* {.importcpp: "IGESDraw_ViewsVisible",
                         header: "IGESDraw_ViewsVisible.hxx", bycopy.} = object of IGESDataViewKindEntity


proc constructIGESDrawViewsVisible*(): IGESDrawViewsVisible {.constructor,
    importcpp: "IGESDraw_ViewsVisible(@)", header: "IGESDraw_ViewsVisible.hxx".}
proc init*(this: var IGESDrawViewsVisible;
          allViewEntities: Handle[IGESDrawHArray1OfViewKindEntity];
          allDisplayEntity: Handle[IGESDataHArray1OfIGESEntity]) {.
    importcpp: "Init", header: "IGESDraw_ViewsVisible.hxx".}
proc initImplied*(this: var IGESDrawViewsVisible;
                 allDisplayEntity: Handle[IGESDataHArray1OfIGESEntity]) {.
    importcpp: "InitImplied", header: "IGESDraw_ViewsVisible.hxx".}
proc isSingle*(this: IGESDrawViewsVisible): bool {.noSideEffect,
    importcpp: "IsSingle", header: "IGESDraw_ViewsVisible.hxx".}
proc nbViews*(this: IGESDrawViewsVisible): cint {.noSideEffect, importcpp: "NbViews",
    header: "IGESDraw_ViewsVisible.hxx".}
proc nbDisplayedEntities*(this: IGESDrawViewsVisible): cint {.noSideEffect,
    importcpp: "NbDisplayedEntities", header: "IGESDraw_ViewsVisible.hxx".}
proc viewItem*(this: IGESDrawViewsVisible; index: cint): Handle[
    IGESDataViewKindEntity] {.noSideEffect, importcpp: "ViewItem",
                             header: "IGESDraw_ViewsVisible.hxx".}
proc displayedEntity*(this: IGESDrawViewsVisible; index: cint): Handle[
    IGESDataIGESEntity] {.noSideEffect, importcpp: "DisplayedEntity",
                         header: "IGESDraw_ViewsVisible.hxx".}
type
  IGESDrawViewsVisiblebaseType* = IGESDataViewKindEntity

proc getTypeName*(): cstring {.importcpp: "IGESDraw_ViewsVisible::get_type_name(@)",
                            header: "IGESDraw_ViewsVisible.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESDraw_ViewsVisible::get_type_descriptor(@)",
    header: "IGESDraw_ViewsVisible.hxx".}
proc dynamicType*(this: IGESDrawViewsVisible): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESDraw_ViewsVisible.hxx".}

























