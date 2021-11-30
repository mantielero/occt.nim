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

discard "forward decl of IFSelect_IntParam"
discard "forward decl of Interface_InterfaceError"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of Interface_Graph"
discard "forward decl of IFGraph_SubPartsIterator"
discard "forward decl of IFSelect_DispPerCount"
type
  HandleIFSelectDispPerCount* = Handle[IFSelectDispPerCount]

## ! A DispPerCount gathers all the input Entities into one or
## ! several Packets, each containing a defined count of Entity
## ! This count is a Parameter of the DispPerCount, given as an
## ! IntParam, thus allowing external control of its Value

type
  IFSelectDispPerCount* {.importcpp: "IFSelect_DispPerCount",
                         header: "IFSelect_DispPerCount.hxx", bycopy.} = object of IFSelectDispatch ##
                                                                                             ## !
                                                                                             ## Creates
                                                                                             ## a
                                                                                             ## DispPerCount
                                                                                             ## with
                                                                                             ## no
                                                                                             ## Count
                                                                                             ## (default
                                                                                             ## value
                                                                                             ## 1)


proc newIFSelectDispPerCount*(): IFSelectDispPerCount {.cdecl, constructor,
    importcpp: "IFSelect_DispPerCount(@)", header: "IFSelect_DispPerCount.hxx".}
proc count*(this: IFSelectDispPerCount): Handle[IFSelectIntParam] {.noSideEffect,
    cdecl, importcpp: "Count", header: "IFSelect_DispPerCount.hxx".}
proc setCount*(this: var IFSelectDispPerCount; count: Handle[IFSelectIntParam]) {.
    cdecl, importcpp: "SetCount", header: "IFSelect_DispPerCount.hxx".}
proc countValue*(this: IFSelectDispPerCount): cint {.noSideEffect, cdecl,
    importcpp: "CountValue", header: "IFSelect_DispPerCount.hxx".}
proc label*(this: IFSelectDispPerCount): TCollectionAsciiString {.noSideEffect,
    cdecl, importcpp: "Label", header: "IFSelect_DispPerCount.hxx".}
proc limitedMax*(this: IFSelectDispPerCount; nbent: cint; max: var cint): bool {.
    noSideEffect, cdecl, importcpp: "LimitedMax", header: "IFSelect_DispPerCount.hxx".}
proc packets*(this: IFSelectDispPerCount; g: InterfaceGraph;
             packs: var IFGraphSubPartsIterator) {.noSideEffect, cdecl,
    importcpp: "Packets", header: "IFSelect_DispPerCount.hxx".}