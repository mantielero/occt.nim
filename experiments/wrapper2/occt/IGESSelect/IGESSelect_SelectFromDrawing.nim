##  Created on: 1994-06-01
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
discard "forward decl of IGESSelect_SelectFromDrawing"
discard "forward decl of IGESSelect_SelectFromDrawing"
type
  HandleIGESSelectSelectFromDrawing* = Handle[IGESSelectSelectFromDrawing]

## ! This selection gets in all the model, the entities which are
## ! attached to the drawing(s) given as input. This includes :
## ! - Drawing Frame (Annotations directky referenced by Drawings)
## ! - Entities attached to the single Views referenced by Drawings

type
  IGESSelectSelectFromDrawing* {.importcpp: "IGESSelect_SelectFromDrawing",
                                header: "IGESSelect_SelectFromDrawing.hxx", bycopy.} = object of IFSelectSelectDeduct ##
                                                                                                               ## !
                                                                                                               ## Creates
                                                                                                               ## a
                                                                                                               ## SelectFromDrawing


proc constructIGESSelectSelectFromDrawing*(): IGESSelectSelectFromDrawing {.
    constructor, importcpp: "IGESSelect_SelectFromDrawing(@)",
    header: "IGESSelect_SelectFromDrawing.hxx".}
proc rootResult*(this: IGESSelectSelectFromDrawing; g: InterfaceGraph): InterfaceEntityIterator {.
    noSideEffect, importcpp: "RootResult",
    header: "IGESSelect_SelectFromDrawing.hxx".}
proc label*(this: IGESSelectSelectFromDrawing): TCollectionAsciiString {.
    noSideEffect, importcpp: "Label", header: "IGESSelect_SelectFromDrawing.hxx".}
type
  IGESSelectSelectFromDrawingbaseType* = IFSelectSelectDeduct

proc getTypeName*(): cstring {.importcpp: "IGESSelect_SelectFromDrawing::get_type_name(@)",
                            header: "IGESSelect_SelectFromDrawing.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESSelect_SelectFromDrawing::get_type_descriptor(@)",
    header: "IGESSelect_SelectFromDrawing.hxx".}
proc dynamicType*(this: IGESSelectSelectFromDrawing): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESSelect_SelectFromDrawing.hxx".}
