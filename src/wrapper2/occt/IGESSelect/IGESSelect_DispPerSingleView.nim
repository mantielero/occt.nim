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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../IFSelect/IFSelect_Dispatch,
  ../Standard/Standard_Boolean

discard "forward decl of IGESSelect_ViewSorter"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of Interface_Graph"
discard "forward decl of IFGraph_SubPartsIterator"
discard "forward decl of Interface_EntityIterator"
discard "forward decl of IGESSelect_DispPerSingleView"
discard "forward decl of IGESSelect_DispPerSingleView"
type
  Handle_IGESSelect_DispPerSingleView* = handle[IGESSelect_DispPerSingleView]

## ! This type of dispatch defines sets of entities attached to
## ! distinct single views. This information appears in the
## ! Directory Part. Drawings are taken into account too,
## ! because of their frames (proper lists of annotations)
## !
## ! Remaining data concern entities not attached to a single view.

type
  IGESSelect_DispPerSingleView* {.importcpp: "IGESSelect_DispPerSingleView",
                                 header: "IGESSelect_DispPerSingleView.hxx",
                                 bycopy.} = object of IFSelect_Dispatch ## ! Creates a
                                                                   ## DispPerSingleView


proc constructIGESSelect_DispPerSingleView*(): IGESSelect_DispPerSingleView {.
    constructor, importcpp: "IGESSelect_DispPerSingleView(@)",
    header: "IGESSelect_DispPerSingleView.hxx".}
proc Label*(this: IGESSelect_DispPerSingleView): TCollection_AsciiString {.
    noSideEffect, importcpp: "Label", header: "IGESSelect_DispPerSingleView.hxx".}
proc Packets*(this: IGESSelect_DispPerSingleView; G: Interface_Graph;
             packs: var IFGraph_SubPartsIterator) {.noSideEffect,
    importcpp: "Packets", header: "IGESSelect_DispPerSingleView.hxx".}
proc CanHaveRemainder*(this: IGESSelect_DispPerSingleView): Standard_Boolean {.
    noSideEffect, importcpp: "CanHaveRemainder",
    header: "IGESSelect_DispPerSingleView.hxx".}
proc Remainder*(this: IGESSelect_DispPerSingleView; G: Interface_Graph): Interface_EntityIterator {.
    noSideEffect, importcpp: "Remainder",
    header: "IGESSelect_DispPerSingleView.hxx".}
type
  IGESSelect_DispPerSingleViewbase_type* = IFSelect_Dispatch

proc get_type_name*(): cstring {.importcpp: "IGESSelect_DispPerSingleView::get_type_name(@)",
                              header: "IGESSelect_DispPerSingleView.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESSelect_DispPerSingleView::get_type_descriptor(@)",
    header: "IGESSelect_DispPerSingleView.hxx".}
proc DynamicType*(this: IGESSelect_DispPerSingleView): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESSelect_DispPerSingleView.hxx".}