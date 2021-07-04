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
discard "forward decl of IGESSelect_DispPerDrawing"
discard "forward decl of IGESSelect_DispPerDrawing"
type
  Handle_IGESSelect_DispPerDrawing* = handle[IGESSelect_DispPerDrawing]

## ! This type of dispatch defines sets of entities attached to
## ! distinct drawings. This information is taken from attached
## ! views which appear in the Directory Part. Also Drawing Frames
## ! are considered when Drawings are part of input list.
## !
## ! Remaining data concern entities not attached to a drawing.

type
  IGESSelect_DispPerDrawing* {.importcpp: "IGESSelect_DispPerDrawing",
                              header: "IGESSelect_DispPerDrawing.hxx", bycopy.} = object of IFSelect_Dispatch ##
                                                                                                       ## !
                                                                                                       ## Creates
                                                                                                       ## a
                                                                                                       ## DispPerDrawing


proc constructIGESSelect_DispPerDrawing*(): IGESSelect_DispPerDrawing {.
    constructor, importcpp: "IGESSelect_DispPerDrawing(@)",
    header: "IGESSelect_DispPerDrawing.hxx".}
proc Label*(this: IGESSelect_DispPerDrawing): TCollection_AsciiString {.
    noSideEffect, importcpp: "Label", header: "IGESSelect_DispPerDrawing.hxx".}
proc Packets*(this: IGESSelect_DispPerDrawing; G: Interface_Graph;
             packs: var IFGraph_SubPartsIterator) {.noSideEffect,
    importcpp: "Packets", header: "IGESSelect_DispPerDrawing.hxx".}
proc CanHaveRemainder*(this: IGESSelect_DispPerDrawing): Standard_Boolean {.
    noSideEffect, importcpp: "CanHaveRemainder",
    header: "IGESSelect_DispPerDrawing.hxx".}
proc Remainder*(this: IGESSelect_DispPerDrawing; G: Interface_Graph): Interface_EntityIterator {.
    noSideEffect, importcpp: "Remainder", header: "IGESSelect_DispPerDrawing.hxx".}
type
  IGESSelect_DispPerDrawingbase_type* = IFSelect_Dispatch

proc get_type_name*(): cstring {.importcpp: "IGESSelect_DispPerDrawing::get_type_name(@)",
                              header: "IGESSelect_DispPerDrawing.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESSelect_DispPerDrawing::get_type_descriptor(@)",
    header: "IGESSelect_DispPerDrawing.hxx".}
proc DynamicType*(this: IGESSelect_DispPerDrawing): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESSelect_DispPerDrawing.hxx".}