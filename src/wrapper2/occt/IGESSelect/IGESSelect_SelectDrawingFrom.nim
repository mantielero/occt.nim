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
discard "forward decl of IGESSelect_SelectDrawingFrom"
discard "forward decl of IGESSelect_SelectDrawingFrom"
type
  HandleIGESSelectSelectDrawingFrom* = Handle[IGESSelectSelectDrawingFrom]

## ! This selection gets the Drawings attached to its input IGES
## ! entities. They are read through thr Single Views, referenced
## ! in Directory Parts of the entities

type
  IGESSelectSelectDrawingFrom* {.importcpp: "IGESSelect_SelectDrawingFrom",
                                header: "IGESSelect_SelectDrawingFrom.hxx", bycopy.} = object of IFSelectSelectDeduct ##
                                                                                                               ## !
                                                                                                               ## Creates
                                                                                                               ## a
                                                                                                               ## SelectDrawingFrom
                                                                                                               ##
                                                                                                               ## !
                                                                                                               ## Returns
                                                                                                               ## True,
                                                                                                               ## because
                                                                                                               ## selection
                                                                                                               ## works
                                                                                                               ## with
                                                                                                               ## a
                                                                                                               ## ViewSorter
                                                                                                               ## which
                                                                                                               ##
                                                                                                               ## !
                                                                                                               ## gives
                                                                                                               ## a
                                                                                                               ## unique
                                                                                                               ## result


proc constructIGESSelectSelectDrawingFrom*(): IGESSelectSelectDrawingFrom {.
    constructor, importcpp: "IGESSelect_SelectDrawingFrom(@)",
    header: "IGESSelect_SelectDrawingFrom.hxx".}
proc rootResult*(this: IGESSelectSelectDrawingFrom; g: InterfaceGraph): InterfaceEntityIterator {.
    noSideEffect, importcpp: "RootResult",
    header: "IGESSelect_SelectDrawingFrom.hxx".}
proc label*(this: IGESSelectSelectDrawingFrom): TCollectionAsciiString {.
    noSideEffect, importcpp: "Label", header: "IGESSelect_SelectDrawingFrom.hxx".}
type
  IGESSelectSelectDrawingFrombaseType* = IFSelectSelectDeduct

proc getTypeName*(): cstring {.importcpp: "IGESSelect_SelectDrawingFrom::get_type_name(@)",
                            header: "IGESSelect_SelectDrawingFrom.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESSelect_SelectDrawingFrom::get_type_descriptor(@)",
    header: "IGESSelect_SelectDrawingFrom.hxx".}
proc dynamicType*(this: IGESSelectSelectDrawingFrom): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESSelect_SelectDrawingFrom.hxx".}

