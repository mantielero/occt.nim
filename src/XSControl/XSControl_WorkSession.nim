##  Created on: 1995-06-01
##  Created by: Christian CAILLET
##  Copyright (c) 1995-1999 Matra Datavision
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

discard "forward decl of XSControl_Controller"
discard "forward decl of XSControl_TransferReader"
discard "forward decl of XSControl_Vars"
discard "forward decl of Message_Messenger"
discard "forward decl of Transfer_TransientProcess"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of Transfer_FinderProcess"
discard "forward decl of TopoDS_Shape"
discard "forward decl of Interface_CheckIterator"
discard "forward decl of XSControl_WorkSession"
discard "forward decl of XSControl_WorkSession"

type
  XSControlWorkSession* {.importcpp: "XSControl_WorkSession",
                         header: "XSControl_WorkSession.hxx", bycopy.} = object #of IFSelectWorkSession ##
                                                                                                ## !
                                                                                                ## Clears
                                                                                                ## binders


type
  HandleXSControlWorkSession* = Handle[XSControlWorkSession]

## ! This WorkSession completes the basic one, by adding :
## ! - use of Controller, with norm selection...
## ! - management of transfers (both ways) with auxiliary classes
## ! TransferReader and TransferWriter
## ! -> these transfers may work with a Context List : its items
## ! are given by the user, according to the transfer to be
## ! i.e. it is interpreted by the Actors
## ! Each item is accessed by a Name

type
  XSControlWorkSessionbaseType* = IFSelectWorkSession

proc constructXSControlWorkSession*(): XSControlWorkSession {.constructor,
    importcpp: "XSControl_WorkSession(@)", header: "XSControl_WorkSession.hxx".}
proc destroyXSControlWorkSession*(this: var XSControlWorkSession) {.
    importcpp: "#.~XSControl_WorkSession()", header: "XSControl_WorkSession.hxx".}
proc clearData*(this: var XSControlWorkSession; theMode: cint) {.
    importcpp: "ClearData", header: "XSControl_WorkSession.hxx".}
proc selectNorm*(this: var XSControlWorkSession; theNormName: StandardCString): bool {.
    importcpp: "SelectNorm", header: "XSControl_WorkSession.hxx".}
proc setController*(this: var XSControlWorkSession;
                   theCtl: Handle[XSControlController]) {.
    importcpp: "SetController", header: "XSControl_WorkSession.hxx".}
proc selectedNorm*(this: XSControlWorkSession; theRsc: bool = false): StandardCString {.
    noSideEffect, importcpp: "SelectedNorm", header: "XSControl_WorkSession.hxx".}
proc normAdaptor*(this: XSControlWorkSession): Handle[XSControlController] {.
    noSideEffect, importcpp: "NormAdaptor", header: "XSControl_WorkSession.hxx".}
#[ proc context*(this: XSControlWorkSession): NCollectionDataMap[
    TCollectionAsciiString, Handle[StandardTransient]] {.noSideEffect,
    importcpp: "Context", header: "XSControl_WorkSession.hxx".}
proc setAllContext*(this: var XSControlWorkSession; theContext: NCollectionDataMap[
    TCollectionAsciiString, Handle[StandardTransient]]) {.
    importcpp: "SetAllContext", header: "XSControl_WorkSession.hxx".}
proc clearContext*(this: var XSControlWorkSession) {.importcpp: "ClearContext",
    header: "XSControl_WorkSession.hxx".}
proc printTransferStatus*(this: XSControlWorkSession; theNum: cint; theWri: bool;
                         theS: var StandardOStream): bool {.noSideEffect,
    importcpp: "PrintTransferStatus", header: "XSControl_WorkSession.hxx".}
proc initTransferReader*(this: var XSControlWorkSession; theMode: cint) {.
    importcpp: "InitTransferReader", header: "XSControl_WorkSession.hxx".}
proc setTransferReader*(this: var XSControlWorkSession;
                       theTR: Handle[XSControlTransferReader]) {.
    importcpp: "SetTransferReader", header: "XSControl_WorkSession.hxx".}
proc transferReader*(this: XSControlWorkSession): Handle[XSControlTransferReader] {.
    noSideEffect, importcpp: "TransferReader", header: "XSControl_WorkSession.hxx".}
proc mapReader*(this: XSControlWorkSession): Handle[TransferTransientProcess] {.
    noSideEffect, importcpp: "MapReader", header: "XSControl_WorkSession.hxx".}
proc setMapReader*(this: var XSControlWorkSession;
                  theTP: Handle[TransferTransientProcess]): bool {.
    importcpp: "SetMapReader", header: "XSControl_WorkSession.hxx".}
proc result*(this: XSControlWorkSession; theEnt: Handle[StandardTransient];
            theMode: cint): Handle[StandardTransient] {.noSideEffect,
    importcpp: "Result", header: "XSControl_WorkSession.hxx".}
proc transferReadOne*(this: var XSControlWorkSession;
                     theEnts: Handle[StandardTransient];
                     theProgress: MessageProgressRange = messageProgressRange()): cint {.
    importcpp: "TransferReadOne", header: "XSControl_WorkSession.hxx".}
proc transferReadRoots*(this: var XSControlWorkSession; theProgress: MessageProgressRange = messageProgressRange()): cint {.
    importcpp: "TransferReadRoots", header: "XSControl_WorkSession.hxx".}
proc newModel*(this: var XSControlWorkSession): Handle[InterfaceInterfaceModel] {.
    importcpp: "NewModel", header: "XSControl_WorkSession.hxx".}
proc transferWriter*(this: XSControlWorkSession): Handle[XSControlTransferWriter] {.
    noSideEffect, importcpp: "TransferWriter", header: "XSControl_WorkSession.hxx".}
proc setMapWriter*(this: var XSControlWorkSession;
                  theFP: Handle[TransferFinderProcess]): bool {.
    importcpp: "SetMapWriter", header: "XSControl_WorkSession.hxx".}
proc transferWriteShape*(this: var XSControlWorkSession; theShape: TopoDS_Shape;
                        theCompGraph: bool = true; theProgress: MessageProgressRange = messageProgressRange()): IFSelectReturnStatus {.
    importcpp: "TransferWriteShape", header: "XSControl_WorkSession.hxx".}
proc transferWriteCheckList*(this: XSControlWorkSession): InterfaceCheckIterator {.
    noSideEffect, importcpp: "TransferWriteCheckList",
    header: "XSControl_WorkSession.hxx".}
proc vars*(this: XSControlWorkSession): Handle[XSControlVars] {.noSideEffect,
    importcpp: "Vars", header: "XSControl_WorkSession.hxx".}
proc setVars*(this: var XSControlWorkSession; theVars: Handle[XSControlVars]) {.
    importcpp: "SetVars", header: "XSControl_WorkSession.hxx".}

proc getTypeName*(): cstring {.importcpp: "XSControl_WorkSession::get_type_name(@)",
                            header: "XSControl_WorkSession.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "XSControl_WorkSession::get_type_descriptor(@)",
    header: "XSControl_WorkSession.hxx".}
proc dynamicType*(this: XSControlWorkSession): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "XSControl_WorkSession.hxx".}

























 ]#