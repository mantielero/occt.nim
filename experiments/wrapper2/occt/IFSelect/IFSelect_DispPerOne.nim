##  Created on: 1992-11-17
##  Created by: Christian CAILLET
##  Copyright (c) 1992-1999 Matra Datavision
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

discard "forward decl of TCollection_AsciiString"
discard "forward decl of Interface_Graph"
discard "forward decl of IFGraph_SubPartsIterator"
discard "forward decl of IFSelect_DispPerOne"
discard "forward decl of IFSelect_DispPerOne"
type
  HandleIFSelectDispPerOne* = Handle[IFSelectDispPerOne]

## ! A DispPerOne gathers all the input Entities into as many
## ! Packets as there Root Entities from the Final Selection,
## ! that is, one Packet per Entity

type
  IFSelectDispPerOne* {.importcpp: "IFSelect_DispPerOne",
                       header: "IFSelect_DispPerOne.hxx", bycopy.} = object of IFSelectDispatch ##
                                                                                         ## !
                                                                                         ## Creates
                                                                                         ## a
                                                                                         ## DispPerOne


proc constructIFSelectDispPerOne*(): IFSelectDispPerOne {.constructor,
    importcpp: "IFSelect_DispPerOne(@)", header: "IFSelect_DispPerOne.hxx".}
proc label*(this: IFSelectDispPerOne): TCollectionAsciiString {.noSideEffect,
    importcpp: "Label", header: "IFSelect_DispPerOne.hxx".}
proc limitedMax*(this: IFSelectDispPerOne; nbent: int; max: var int): bool {.
    noSideEffect, importcpp: "LimitedMax", header: "IFSelect_DispPerOne.hxx".}
proc packets*(this: IFSelectDispPerOne; g: InterfaceGraph;
             packs: var IFGraphSubPartsIterator) {.noSideEffect,
    importcpp: "Packets", header: "IFSelect_DispPerOne.hxx".}
type
  IFSelectDispPerOnebaseType* = IFSelectDispatch

proc getTypeName*(): cstring {.importcpp: "IFSelect_DispPerOne::get_type_name(@)",
                            header: "IFSelect_DispPerOne.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IFSelect_DispPerOne::get_type_descriptor(@)",
    header: "IFSelect_DispPerOne.hxx".}
proc dynamicType*(this: IFSelectDispPerOne): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IFSelect_DispPerOne.hxx".}
