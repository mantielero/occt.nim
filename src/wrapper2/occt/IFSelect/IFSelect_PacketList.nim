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


proc constructIFSelectPacketList*(model: Handle[InterfaceInterfaceModel]): IFSelectPacketList {.
    constructor, importcpp: "IFSelect_PacketList(@)",
    header: "IFSelect_PacketList.hxx".}
proc setName*(this: var IFSelectPacketList; name: StandardCString) {.
    importcpp: "SetName", header: "IFSelect_PacketList.hxx".}
proc name*(this: IFSelectPacketList): StandardCString {.noSideEffect,
    importcpp: "Name", header: "IFSelect_PacketList.hxx".}
proc model*(this: IFSelectPacketList): Handle[InterfaceInterfaceModel] {.
    noSideEffect, importcpp: "Model", header: "IFSelect_PacketList.hxx".}
proc addPacket*(this: var IFSelectPacketList) {.importcpp: "AddPacket",
    header: "IFSelect_PacketList.hxx".}
proc add*(this: var IFSelectPacketList; ent: Handle[StandardTransient]) {.
    importcpp: "Add", header: "IFSelect_PacketList.hxx".}
proc addList*(this: var IFSelectPacketList;
             list: Handle[TColStdHSequenceOfTransient]) {.importcpp: "AddList",
    header: "IFSelect_PacketList.hxx".}
proc nbPackets*(this: IFSelectPacketList): StandardInteger {.noSideEffect,
    importcpp: "NbPackets", header: "IFSelect_PacketList.hxx".}
proc nbEntities*(this: IFSelectPacketList; numpack: StandardInteger): StandardInteger {.
    noSideEffect, importcpp: "NbEntities", header: "IFSelect_PacketList.hxx".}
proc entities*(this: IFSelectPacketList; numpack: StandardInteger): InterfaceEntityIterator {.
    noSideEffect, importcpp: "Entities", header: "IFSelect_PacketList.hxx".}
proc highestDuplicationCount*(this: IFSelectPacketList): StandardInteger {.
    noSideEffect, importcpp: "HighestDuplicationCount",
    header: "IFSelect_PacketList.hxx".}
proc nbDuplicated*(this: IFSelectPacketList; count: StandardInteger;
                  andmore: StandardBoolean): StandardInteger {.noSideEffect,
    importcpp: "NbDuplicated", header: "IFSelect_PacketList.hxx".}
proc duplicated*(this: IFSelectPacketList; count: StandardInteger;
                andmore: StandardBoolean): InterfaceEntityIterator {.noSideEffect,
    importcpp: "Duplicated", header: "IFSelect_PacketList.hxx".}
type
  IFSelectPacketListbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "IFSelect_PacketList::get_type_name(@)",
                            header: "IFSelect_PacketList.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IFSelect_PacketList::get_type_descriptor(@)",
    header: "IFSelect_PacketList.hxx".}
proc dynamicType*(this: IFSelectPacketList): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IFSelect_PacketList.hxx".}

