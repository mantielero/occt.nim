import ifselect_types

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

discard "forward decl of IFSelect_ShareOut"
discard "forward decl of IFSelect_Dispatch"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Interface_InterfaceError"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of Interface_Graph"
discard "forward decl of IFSelect_PacketList"
discard "forward decl of Interface_EntityIterator"
discard "forward decl of TCollection_AsciiString"


proc newIFSelectShareOutResult*(sho: Handle[IFSelectShareOut];
                               `mod`: Handle[InterfaceInterfaceModel]): IFSelectShareOutResult {.
    cdecl, constructor, importcpp: "IFSelect_ShareOutResult(@)", header: "IFSelect_ShareOutResult.hxx".}
proc newIFSelectShareOutResult*(sho: Handle[IFSelectShareOut]; g: InterfaceGraph): IFSelectShareOutResult {.
    cdecl, constructor, importcpp: "IFSelect_ShareOutResult(@)", header: "IFSelect_ShareOutResult.hxx".}
proc newIFSelectShareOutResult*(disp: Handle[IFSelectDispatch];
                               `mod`: Handle[InterfaceInterfaceModel]): IFSelectShareOutResult {.
    cdecl, constructor, importcpp: "IFSelect_ShareOutResult(@)", header: "IFSelect_ShareOutResult.hxx".}
proc newIFSelectShareOutResult*(disp: Handle[IFSelectDispatch]; g: InterfaceGraph): IFSelectShareOutResult {.
    cdecl, constructor, importcpp: "IFSelect_ShareOutResult(@)", header: "IFSelect_ShareOutResult.hxx".}
proc shareOut*(this: IFSelectShareOutResult): Handle[IFSelectShareOut] {.
    noSideEffect, cdecl, importcpp: "ShareOut", header: "IFSelect_ShareOutResult.hxx".}
proc graph*(this: IFSelectShareOutResult): InterfaceGraph {.noSideEffect, cdecl,
    importcpp: "Graph", header: "IFSelect_ShareOutResult.hxx".}
proc reset*(this: var IFSelectShareOutResult) {.cdecl, importcpp: "Reset",
    header: "IFSelect_ShareOutResult.hxx".}
proc evaluate*(this: var IFSelectShareOutResult) {.cdecl, importcpp: "Evaluate",
    header: "IFSelect_ShareOutResult.hxx".}
proc packets*(this: var IFSelectShareOutResult; complete: bool = true): Handle[
    IFSelectPacketList] {.cdecl, importcpp: "Packets", header: "IFSelect_ShareOutResult.hxx".}
proc nbPackets*(this: var IFSelectShareOutResult): cint {.cdecl,
    importcpp: "NbPackets", header: "IFSelect_ShareOutResult.hxx".}
proc prepare*(this: var IFSelectShareOutResult) {.cdecl, importcpp: "Prepare",
    header: "IFSelect_ShareOutResult.hxx".}
proc more*(this: var IFSelectShareOutResult): bool {.cdecl, importcpp: "More",
    header: "IFSelect_ShareOutResult.hxx".}
proc next*(this: var IFSelectShareOutResult) {.cdecl, importcpp: "Next",
    header: "IFSelect_ShareOutResult.hxx".}
proc nextDispatch*(this: var IFSelectShareOutResult) {.cdecl,
    importcpp: "NextDispatch", header: "IFSelect_ShareOutResult.hxx".}
proc dispatch*(this: IFSelectShareOutResult): Handle[IFSelectDispatch] {.
    noSideEffect, cdecl, importcpp: "Dispatch", header: "IFSelect_ShareOutResult.hxx".}
proc dispatchRank*(this: IFSelectShareOutResult): cint {.noSideEffect, cdecl,
    importcpp: "DispatchRank", header: "IFSelect_ShareOutResult.hxx".}
proc packetsInDispatch*(this: IFSelectShareOutResult; numpack: var cint;
                       nbpacks: var cint) {.noSideEffect, cdecl,
    importcpp: "PacketsInDispatch", header: "IFSelect_ShareOutResult.hxx".}
proc packetRoot*(this: var IFSelectShareOutResult): InterfaceEntityIterator {.cdecl,
    importcpp: "PacketRoot", header: "IFSelect_ShareOutResult.hxx".}
proc packetContent*(this: var IFSelectShareOutResult): InterfaceEntityIterator {.
    cdecl, importcpp: "PacketContent", header: "IFSelect_ShareOutResult.hxx".}
proc fileName*(this: IFSelectShareOutResult): TCollectionAsciiString {.noSideEffect,
    cdecl, importcpp: "FileName", header: "IFSelect_ShareOutResult.hxx".}
