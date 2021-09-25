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
discard "forward decl of IGESSelect_SelectSingleViewFrom"
discard "forward decl of IGESSelect_SelectSingleViewFrom"
type
  HandleIGESSelectSelectSingleViewFrom* = Handle[IGESSelectSelectSingleViewFrom]

## ! This selection gets the Single Views attached to its input
## ! IGES entities. Single Views themselves or Drawings as passed
## ! as such (Drawings, for their Annotations)

type
  IGESSelectSelectSingleViewFrom* {.importcpp: "IGESSelect_SelectSingleViewFrom", header: "IGESSelect_SelectSingleViewFrom.hxx",
                                   bycopy.} = object of IFSelectSelectDeduct ## ! Creates a
                                                                        ## SelectSingleViewFrom
                                                                        ## ! Returns True, because
                                                                        ## selection works with a
                                                                        ## ViewSorter which
                                                                        ## ! gives a unique result


proc constructIGESSelectSelectSingleViewFrom*(): IGESSelectSelectSingleViewFrom {.
    constructor, importcpp: "IGESSelect_SelectSingleViewFrom(@)",
    header: "IGESSelect_SelectSingleViewFrom.hxx".}
proc rootResult*(this: IGESSelectSelectSingleViewFrom; g: InterfaceGraph): InterfaceEntityIterator {.
    noSideEffect, importcpp: "RootResult",
    header: "IGESSelect_SelectSingleViewFrom.hxx".}
proc label*(this: IGESSelectSelectSingleViewFrom): TCollectionAsciiString {.
    noSideEffect, importcpp: "Label", header: "IGESSelect_SelectSingleViewFrom.hxx".}
type
  IGESSelectSelectSingleViewFrombaseType* = IFSelectSelectDeduct

proc getTypeName*(): cstring {.importcpp: "IGESSelect_SelectSingleViewFrom::get_type_name(@)",
                            header: "IGESSelect_SelectSingleViewFrom.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESSelect_SelectSingleViewFrom::get_type_descriptor(@)",
    header: "IGESSelect_SelectSingleViewFrom.hxx".}
proc dynamicType*(this: IGESSelectSelectSingleViewFrom): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESSelect_SelectSingleViewFrom.hxx".}
