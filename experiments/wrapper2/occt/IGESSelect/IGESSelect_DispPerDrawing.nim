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
discard "forward decl of IGESSelect_DispPerDrawing"
discard "forward decl of IGESSelect_DispPerDrawing"
type
  HandleIGESSelectDispPerDrawing* = Handle[IGESSelectDispPerDrawing]

## ! This type of dispatch defines sets of entities attached to
## ! distinct drawings. This information is taken from attached
## ! views which appear in the Directory Part. Also Drawing Frames
## ! are considered when Drawings are part of input list.
## !
## ! Remaining data concern entities not attached to a drawing.

type
  IGESSelectDispPerDrawing* {.importcpp: "IGESSelect_DispPerDrawing",
                             header: "IGESSelect_DispPerDrawing.hxx", bycopy.} = object of IFSelectDispatch ##
                                                                                                     ## !
                                                                                                     ## Creates
                                                                                                     ## a
                                                                                                     ## DispPerDrawing


proc constructIGESSelectDispPerDrawing*(): IGESSelectDispPerDrawing {.constructor,
    importcpp: "IGESSelect_DispPerDrawing(@)",
    header: "IGESSelect_DispPerDrawing.hxx".}
proc label*(this: IGESSelectDispPerDrawing): TCollectionAsciiString {.noSideEffect,
    importcpp: "Label", header: "IGESSelect_DispPerDrawing.hxx".}
proc packets*(this: IGESSelectDispPerDrawing; g: InterfaceGraph;
             packs: var IFGraphSubPartsIterator) {.noSideEffect,
    importcpp: "Packets", header: "IGESSelect_DispPerDrawing.hxx".}
proc canHaveRemainder*(this: IGESSelectDispPerDrawing): bool {.noSideEffect,
    importcpp: "CanHaveRemainder", header: "IGESSelect_DispPerDrawing.hxx".}
proc remainder*(this: IGESSelectDispPerDrawing; g: InterfaceGraph): InterfaceEntityIterator {.
    noSideEffect, importcpp: "Remainder", header: "IGESSelect_DispPerDrawing.hxx".}
type
  IGESSelectDispPerDrawingbaseType* = IFSelectDispatch

proc getTypeName*(): cstring {.importcpp: "IGESSelect_DispPerDrawing::get_type_name(@)",
                            header: "IGESSelect_DispPerDrawing.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESSelect_DispPerDrawing::get_type_descriptor(@)",
    header: "IGESSelect_DispPerDrawing.hxx".}
proc dynamicType*(this: IGESSelectDispPerDrawing): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESSelect_DispPerDrawing.hxx".}
