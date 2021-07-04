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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer, ../TColStd/TColStd_SequenceOfInteger,
  ../Interface/Interface_Graph, ../IFGraph/IFGraph_SubPartsIterator

discard "forward decl of IFSelect_ShareOut"
discard "forward decl of IFSelect_Dispatch"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Interface_InterfaceError"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of Interface_Graph"
discard "forward decl of IFSelect_PacketList"
discard "forward decl of Interface_EntityIterator"
discard "forward decl of TCollection_AsciiString"
type
  IFSelect_ShareOutResult* {.importcpp: "IFSelect_ShareOutResult",
                            header: "IFSelect_ShareOutResult.hxx", bycopy.} = object ##
                                                                                ## !
                                                                                ## Creates
                                                                                ## a
                                                                                ## ShareOutResult
                                                                                ## from
                                                                                ## a
                                                                                ## ShareOut,
                                                                                ## to
                                                                                ## work
                                                                                ## on
                                                                                ## a
                                                                                ## Model
                                                                                ##
                                                                                ## !
                                                                                ## (without
                                                                                ## any
                                                                                ## more
                                                                                ## precision;
                                                                                ## uses
                                                                                ## Active
                                                                                ## Protocol)


proc constructIFSelect_ShareOutResult*(sho: handle[IFSelect_ShareOut];
                                      `mod`: handle[Interface_InterfaceModel]): IFSelect_ShareOutResult {.
    constructor, importcpp: "IFSelect_ShareOutResult(@)",
    header: "IFSelect_ShareOutResult.hxx".}
proc constructIFSelect_ShareOutResult*(sho: handle[IFSelect_ShareOut];
                                      G: Interface_Graph): IFSelect_ShareOutResult {.
    constructor, importcpp: "IFSelect_ShareOutResult(@)",
    header: "IFSelect_ShareOutResult.hxx".}
proc constructIFSelect_ShareOutResult*(disp: handle[IFSelect_Dispatch];
                                      `mod`: handle[Interface_InterfaceModel]): IFSelect_ShareOutResult {.
    constructor, importcpp: "IFSelect_ShareOutResult(@)",
    header: "IFSelect_ShareOutResult.hxx".}
proc constructIFSelect_ShareOutResult*(disp: handle[IFSelect_Dispatch];
                                      G: Interface_Graph): IFSelect_ShareOutResult {.
    constructor, importcpp: "IFSelect_ShareOutResult(@)",
    header: "IFSelect_ShareOutResult.hxx".}
proc ShareOut*(this: IFSelect_ShareOutResult): handle[IFSelect_ShareOut] {.
    noSideEffect, importcpp: "ShareOut", header: "IFSelect_ShareOutResult.hxx".}
proc Graph*(this: IFSelect_ShareOutResult): Interface_Graph {.noSideEffect,
    importcpp: "Graph", header: "IFSelect_ShareOutResult.hxx".}
proc Reset*(this: var IFSelect_ShareOutResult) {.importcpp: "Reset",
    header: "IFSelect_ShareOutResult.hxx".}
proc Evaluate*(this: var IFSelect_ShareOutResult) {.importcpp: "Evaluate",
    header: "IFSelect_ShareOutResult.hxx".}
proc Packets*(this: var IFSelect_ShareOutResult;
             complete: Standard_Boolean = Standard_True): handle[IFSelect_PacketList] {.
    importcpp: "Packets", header: "IFSelect_ShareOutResult.hxx".}
proc NbPackets*(this: var IFSelect_ShareOutResult): Standard_Integer {.
    importcpp: "NbPackets", header: "IFSelect_ShareOutResult.hxx".}
proc Prepare*(this: var IFSelect_ShareOutResult) {.importcpp: "Prepare",
    header: "IFSelect_ShareOutResult.hxx".}
proc More*(this: var IFSelect_ShareOutResult): Standard_Boolean {.importcpp: "More",
    header: "IFSelect_ShareOutResult.hxx".}
proc Next*(this: var IFSelect_ShareOutResult) {.importcpp: "Next",
    header: "IFSelect_ShareOutResult.hxx".}
proc NextDispatch*(this: var IFSelect_ShareOutResult) {.importcpp: "NextDispatch",
    header: "IFSelect_ShareOutResult.hxx".}
proc Dispatch*(this: IFSelect_ShareOutResult): handle[IFSelect_Dispatch] {.
    noSideEffect, importcpp: "Dispatch", header: "IFSelect_ShareOutResult.hxx".}
proc DispatchRank*(this: IFSelect_ShareOutResult): Standard_Integer {.noSideEffect,
    importcpp: "DispatchRank", header: "IFSelect_ShareOutResult.hxx".}
proc PacketsInDispatch*(this: IFSelect_ShareOutResult;
                       numpack: var Standard_Integer; nbpacks: var Standard_Integer) {.
    noSideEffect, importcpp: "PacketsInDispatch",
    header: "IFSelect_ShareOutResult.hxx".}
proc PacketRoot*(this: var IFSelect_ShareOutResult): Interface_EntityIterator {.
    importcpp: "PacketRoot", header: "IFSelect_ShareOutResult.hxx".}
proc PacketContent*(this: var IFSelect_ShareOutResult): Interface_EntityIterator {.
    importcpp: "PacketContent", header: "IFSelect_ShareOutResult.hxx".}
proc FileName*(this: IFSelect_ShareOutResult): TCollection_AsciiString {.
    noSideEffect, importcpp: "FileName", header: "IFSelect_ShareOutResult.hxx".}