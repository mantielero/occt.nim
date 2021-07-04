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

import
  ../Standard/Standard, ../Standard/Standard_Type,
  ../TColStd/TColStd_Array1OfInteger, ../Interface/Interface_IntList,
  ../Standard/Standard_Integer, ../Standard/Standard_Boolean,
  ../TCollection/TCollection_AsciiString, ../Standard/Standard_Transient,
  ../Standard/Standard_CString, ../TColStd/TColStd_HSequenceOfTransient

discard "forward decl of Interface_InterfaceModel"
discard "forward decl of Interface_InterfaceError"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_EntityIterator"
discard "forward decl of IFSelect_PacketList"
discard "forward decl of IFSelect_PacketList"
type
  Handle_IFSelect_PacketList* = handle[IFSelect_PacketList]

## ! This class gives a simple way to return then consult a
## ! list of packets, determined from the content of a Model,
## ! by various criteria.
## !
## ! It allows to describe several lists with entities from a
## ! given model, possibly more than one list knowing every entity,
## ! and to determine the remaining list (entities in no lists) and
## ! the duplications (with their count).

type
  IFSelect_PacketList* {.importcpp: "IFSelect_PacketList",
                        header: "IFSelect_PacketList.hxx", bycopy.} = object of Standard_Transient ##
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


proc constructIFSelect_PacketList*(model: handle[Interface_InterfaceModel]): IFSelect_PacketList {.
    constructor, importcpp: "IFSelect_PacketList(@)",
    header: "IFSelect_PacketList.hxx".}
proc SetName*(this: var IFSelect_PacketList; name: Standard_CString) {.
    importcpp: "SetName", header: "IFSelect_PacketList.hxx".}
proc Name*(this: IFSelect_PacketList): Standard_CString {.noSideEffect,
    importcpp: "Name", header: "IFSelect_PacketList.hxx".}
proc Model*(this: IFSelect_PacketList): handle[Interface_InterfaceModel] {.
    noSideEffect, importcpp: "Model", header: "IFSelect_PacketList.hxx".}
proc AddPacket*(this: var IFSelect_PacketList) {.importcpp: "AddPacket",
    header: "IFSelect_PacketList.hxx".}
proc Add*(this: var IFSelect_PacketList; ent: handle[Standard_Transient]) {.
    importcpp: "Add", header: "IFSelect_PacketList.hxx".}
proc AddList*(this: var IFSelect_PacketList;
             list: handle[TColStd_HSequenceOfTransient]) {.importcpp: "AddList",
    header: "IFSelect_PacketList.hxx".}
proc NbPackets*(this: IFSelect_PacketList): Standard_Integer {.noSideEffect,
    importcpp: "NbPackets", header: "IFSelect_PacketList.hxx".}
proc NbEntities*(this: IFSelect_PacketList; numpack: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "NbEntities", header: "IFSelect_PacketList.hxx".}
proc Entities*(this: IFSelect_PacketList; numpack: Standard_Integer): Interface_EntityIterator {.
    noSideEffect, importcpp: "Entities", header: "IFSelect_PacketList.hxx".}
proc HighestDuplicationCount*(this: IFSelect_PacketList): Standard_Integer {.
    noSideEffect, importcpp: "HighestDuplicationCount",
    header: "IFSelect_PacketList.hxx".}
proc NbDuplicated*(this: IFSelect_PacketList; count: Standard_Integer;
                  andmore: Standard_Boolean): Standard_Integer {.noSideEffect,
    importcpp: "NbDuplicated", header: "IFSelect_PacketList.hxx".}
proc Duplicated*(this: IFSelect_PacketList; count: Standard_Integer;
                andmore: Standard_Boolean): Interface_EntityIterator {.
    noSideEffect, importcpp: "Duplicated", header: "IFSelect_PacketList.hxx".}
type
  IFSelect_PacketListbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "IFSelect_PacketList::get_type_name(@)",
                              header: "IFSelect_PacketList.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IFSelect_PacketList::get_type_descriptor(@)",
    header: "IFSelect_PacketList.hxx".}
proc DynamicType*(this: IFSelect_PacketList): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "IFSelect_PacketList.hxx".}