##  Created on: 1994-05-31
##  Created by: Christian CAILLET
##  Copyright (c) 1994-1999 Matra Datavision
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

discard "forward decl of Interface_InterfaceError"
discard "forward decl of Interface_EntityIterator"
discard "forward decl of Interface_Graph"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of IGESSelect_SelectFromSingleView"
discard "forward decl of IGESSelect_SelectFromSingleView"
type
  HandleC1C1* = Handle[IGESSelectSelectFromSingleView]

## ! This selection gets in all the model, the entities which are
## ! attached to the views given as input. Only Single Views are
## ! considered. This information is kept from Directory Part
## ! (View Item).

type
  IGESSelectSelectFromSingleView* {.importcpp: "IGESSelect_SelectFromSingleView", header: "IGESSelect_SelectFromSingleView.hxx",
                                   bycopy.} = object of IFSelectSelectDeduct ## ! Creates a
                                                                        ## SelectFromSingleView


proc constructIGESSelectSelectFromSingleView*(): IGESSelectSelectFromSingleView {.
    constructor, importcpp: "IGESSelect_SelectFromSingleView(@)",
    header: "IGESSelect_SelectFromSingleView.hxx".}
proc rootResult*(this: IGESSelectSelectFromSingleView; g: InterfaceGraph): InterfaceEntityIterator {.
    noSideEffect, importcpp: "RootResult",
    header: "IGESSelect_SelectFromSingleView.hxx".}
proc label*(this: IGESSelectSelectFromSingleView): TCollectionAsciiString {.
    noSideEffect, importcpp: "Label", header: "IGESSelect_SelectFromSingleView.hxx".}
type
  IGESSelectSelectFromSingleViewbaseType* = IFSelectSelectDeduct

proc getTypeName*(): cstring {.importcpp: "IGESSelect_SelectFromSingleView::get_type_name(@)",
                            header: "IGESSelect_SelectFromSingleView.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESSelect_SelectFromSingleView::get_type_descriptor(@)",
    header: "IGESSelect_SelectFromSingleView.hxx".}
proc dynamicType*(this: IGESSelectSelectFromSingleView): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESSelect_SelectFromSingleView.hxx".}

























