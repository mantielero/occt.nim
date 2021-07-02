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

discard "forward decl of IGESSelect_ViewSorter"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of Interface_Graph"
discard "forward decl of IFGraph_SubPartsIterator"
discard "forward decl of Interface_EntityIterator"
discard "forward decl of IGESSelect_DispPerSingleView"
discard "forward decl of IGESSelect_DispPerSingleView"
type
  HandleIGESSelectDispPerSingleView* = Handle[IGESSelectDispPerSingleView]

## ! This type of dispatch defines sets of entities attached to
## ! distinct single views. This information appears in the
## ! Directory Part. Drawings are taken into account too,
## ! because of their frames (proper lists of annotations)
## !
## ! Remaining data concern entities not attached to a single view.

type
  IGESSelectDispPerSingleView* {.importcpp: "IGESSelect_DispPerSingleView",
                                header: "IGESSelect_DispPerSingleView.hxx", bycopy.} = object of IFSelectDispatch ##
                                                                                                           ## !
                                                                                                           ## Creates
                                                                                                           ## a
                                                                                                           ## DispPerSingleView


proc constructIGESSelectDispPerSingleView*(): IGESSelectDispPerSingleView {.
    constructor, importcpp: "IGESSelect_DispPerSingleView(@)",
    header: "IGESSelect_DispPerSingleView.hxx".}
proc label*(this: IGESSelectDispPerSingleView): TCollectionAsciiString {.
    noSideEffect, importcpp: "Label", header: "IGESSelect_DispPerSingleView.hxx".}
proc packets*(this: IGESSelectDispPerSingleView; g: InterfaceGraph;
             packs: var IFGraphSubPartsIterator) {.noSideEffect,
    importcpp: "Packets", header: "IGESSelect_DispPerSingleView.hxx".}
proc canHaveRemainder*(this: IGESSelectDispPerSingleView): StandardBoolean {.
    noSideEffect, importcpp: "CanHaveRemainder",
    header: "IGESSelect_DispPerSingleView.hxx".}
proc remainder*(this: IGESSelectDispPerSingleView; g: InterfaceGraph): InterfaceEntityIterator {.
    noSideEffect, importcpp: "Remainder",
    header: "IGESSelect_DispPerSingleView.hxx".}
type
  IGESSelectDispPerSingleViewbaseType* = IFSelectDispatch

proc getTypeName*(): cstring {.importcpp: "IGESSelect_DispPerSingleView::get_type_name(@)",
                            header: "IGESSelect_DispPerSingleView.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESSelect_DispPerSingleView::get_type_descriptor(@)",
    header: "IGESSelect_DispPerSingleView.hxx".}
proc dynamicType*(this: IGESSelectDispPerSingleView): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESSelect_DispPerSingleView.hxx".}

