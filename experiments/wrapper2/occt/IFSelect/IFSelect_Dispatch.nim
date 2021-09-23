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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Transient,
  ../Standard/Standard_Boolean, ../Standard/Standard_Integer

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of IFSelect_Selection"
discard "forward decl of Interface_InterfaceError"
discard "forward decl of IFSelect_SelectionIterator"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of Interface_EntityIterator"
discard "forward decl of Interface_Graph"
discard "forward decl of IFGraph_SubPartsIterator"
discard "forward decl of IFSelect_Dispatch"
discard "forward decl of IFSelect_Dispatch"
type
  Handle_IFSelect_Dispatch* = handle[IFSelect_Dispatch]

## ! This class allows to describe how a set of Entities has to be
## ! dispatched into resulting Packets : a Packet is a sub-set of
## ! the initial set of entities.
## !
## ! Thus, it can generate zero, one, or more Packets according
## ! input set and criterium of dispatching. And it can let apart
## ! some entities : it is the Remainder, which can be recovered
## ! by a specific Selection (RemainderFromDispatch).
## !
## ! Depending of sub-classes, a Dispatch can potentially generate
## ! a limited or not count of packet, and a remainder or none.
## !
## ! The input set is read from a specified Selection, attached to
## ! the Dispatch : the Final Selection of the Dispatch. The input
## ! is the Unique Root Entities list of the Final Selection

type
  IFSelect_Dispatch* {.importcpp: "IFSelect_Dispatch",
                      header: "IFSelect_Dispatch.hxx", bycopy.} = object of Standard_Transient ##
                                                                                        ## !
                                                                                        ## Sets
                                                                                        ## a
                                                                                        ## Root
                                                                                        ## Name
                                                                                        ## as
                                                                                        ## an
                                                                                        ## HAsciiString
                                                                                        ##
                                                                                        ## !
                                                                                        ## To
                                                                                        ## reset
                                                                                        ## it,
                                                                                        ## give
                                                                                        ## a
                                                                                        ## Null
                                                                                        ## Handle
                                                                                        ## (then,
                                                                                        ## a
                                                                                        ## ShareOut
                                                                                        ## will
                                                                                        ## have
                                                                                        ##
                                                                                        ## !
                                                                                        ## to
                                                                                        ## define
                                                                                        ## the
                                                                                        ## Default
                                                                                        ## Root
                                                                                        ## Name)


proc SetRootName*(this: var IFSelect_Dispatch;
                 name: handle[TCollection_HAsciiString]) {.
    importcpp: "SetRootName", header: "IFSelect_Dispatch.hxx".}
proc HasRootName*(this: IFSelect_Dispatch): Standard_Boolean {.noSideEffect,
    importcpp: "HasRootName", header: "IFSelect_Dispatch.hxx".}
proc RootName*(this: IFSelect_Dispatch): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "RootName", header: "IFSelect_Dispatch.hxx".}
proc SetFinalSelection*(this: var IFSelect_Dispatch; sel: handle[IFSelect_Selection]) {.
    importcpp: "SetFinalSelection", header: "IFSelect_Dispatch.hxx".}
proc FinalSelection*(this: IFSelect_Dispatch): handle[IFSelect_Selection] {.
    noSideEffect, importcpp: "FinalSelection", header: "IFSelect_Dispatch.hxx".}
proc Selections*(this: IFSelect_Dispatch): IFSelect_SelectionIterator {.
    noSideEffect, importcpp: "Selections", header: "IFSelect_Dispatch.hxx".}
proc CanHaveRemainder*(this: IFSelect_Dispatch): Standard_Boolean {.noSideEffect,
    importcpp: "CanHaveRemainder", header: "IFSelect_Dispatch.hxx".}
proc LimitedMax*(this: IFSelect_Dispatch; nbent: Standard_Integer;
                max: var Standard_Integer): Standard_Boolean {.noSideEffect,
    importcpp: "LimitedMax", header: "IFSelect_Dispatch.hxx".}
proc Label*(this: IFSelect_Dispatch): TCollection_AsciiString {.noSideEffect,
    importcpp: "Label", header: "IFSelect_Dispatch.hxx".}
proc GetEntities*(this: IFSelect_Dispatch; G: Interface_Graph): Interface_EntityIterator {.
    noSideEffect, importcpp: "GetEntities", header: "IFSelect_Dispatch.hxx".}
proc Packets*(this: IFSelect_Dispatch; G: Interface_Graph;
             packs: var IFGraph_SubPartsIterator) {.noSideEffect,
    importcpp: "Packets", header: "IFSelect_Dispatch.hxx".}
proc Packeted*(this: IFSelect_Dispatch; G: Interface_Graph): Interface_EntityIterator {.
    noSideEffect, importcpp: "Packeted", header: "IFSelect_Dispatch.hxx".}
proc Remainder*(this: IFSelect_Dispatch; G: Interface_Graph): Interface_EntityIterator {.
    noSideEffect, importcpp: "Remainder", header: "IFSelect_Dispatch.hxx".}
type
  IFSelect_Dispatchbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "IFSelect_Dispatch::get_type_name(@)",
                              header: "IFSelect_Dispatch.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IFSelect_Dispatch::get_type_descriptor(@)",
    header: "IFSelect_Dispatch.hxx".}
proc DynamicType*(this: IFSelect_Dispatch): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "IFSelect_Dispatch.hxx".}