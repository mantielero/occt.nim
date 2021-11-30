##  Created on: 1994-09-02
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

discard "forward decl of Interface_InterfaceModel"
discard "forward decl of Interface_InterfaceError"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_EntityIterator"
discard "forward decl of IFSelect_PacketList"
type
  HandleIFSelectPacketList* = Handle[IFSelectPacketList]

## ! This class gives a simple way to return then consult a
## ! list of packets, determined from the content of a Model,
## ! by various criteria.
## !
## ! It allows to describe several lists with entities from a
## ! given model, possibly more than one list knowing every entity,
## ! and to determine the remaining list (entities in no lists) and
## ! the duplications (with their count).

type
  IFSelectPacketList* {.importcpp: "IFSelect_PacketList",
                       header: "IFSelect_PacketList.hxx", bycopy.} = object of StandardTransient ##
                                                                                          ## !
                                                                                          ## Creates
                                                                                          ## a
                                                                                          ## PackList,
                                                                                          ## empty,
                                                                                          ## ready
                                                                                          ## to
                                                                                          ## receive
                                                                                          ## entities
                                                                                          ## from
                                                                                          ## a
                                                                                          ##
                                                                                          ## !
                                                                                          ## given
                                                                                          ## Model


proc newIFSelectPacketList*(model: Handle[InterfaceInterfaceModel]): IFSelectPacketList {.
    cdecl, constructor, importcpp: "IFSelect_PacketList(@)", header: "IFSelect_PacketList.hxx".}
proc setName*(this: var IFSelectPacketList; name: cstring) {.cdecl,
    importcpp: "SetName", header: "IFSelect_PacketList.hxx".}
proc name*(this: IFSelectPacketList): cstring {.noSideEffect, cdecl,
    importcpp: "Name", header: "IFSelect_PacketList.hxx".}
proc model*(this: IFSelectPacketList): Handle[InterfaceInterfaceModel] {.
    noSideEffect, cdecl, importcpp: "Model", header: "IFSelect_PacketList.hxx".}
proc addPacket*(this: var IFSelectPacketList) {.cdecl, importcpp: "AddPacket",
    header: "IFSelect_PacketList.hxx".}
proc add*(this: var IFSelectPacketList; ent: Handle[StandardTransient]) {.cdecl,
    importcpp: "Add", header: "IFSelect_PacketList.hxx".}
proc addList*(this: var IFSelectPacketList;
             list: Handle[TColStdHSequenceOfTransient]) {.cdecl,
    importcpp: "AddList", header: "IFSelect_PacketList.hxx".}
proc nbPackets*(this: IFSelectPacketList): cint {.noSideEffect, cdecl,
    importcpp: "NbPackets", header: "IFSelect_PacketList.hxx".}
proc nbEntities*(this: IFSelectPacketList; numpack: cint): cint {.noSideEffect, cdecl,
    importcpp: "NbEntities", header: "IFSelect_PacketList.hxx".}
proc entities*(this: IFSelectPacketList; numpack: cint): InterfaceEntityIterator {.
    noSideEffect, cdecl, importcpp: "Entities", header: "IFSelect_PacketList.hxx".}
proc highestDuplicationCount*(this: IFSelectPacketList): cint {.noSideEffect, cdecl,
    importcpp: "HighestDuplicationCount", header: "IFSelect_PacketList.hxx".}
proc nbDuplicated*(this: IFSelectPacketList; count: cint; andmore: bool): cint {.
    noSideEffect, cdecl, importcpp: "NbDuplicated", header: "IFSelect_PacketList.hxx".}
proc duplicated*(this: IFSelectPacketList; count: cint; andmore: bool): InterfaceEntityIterator {.
    noSideEffect, cdecl, importcpp: "Duplicated", header: "IFSelect_PacketList.hxx".}