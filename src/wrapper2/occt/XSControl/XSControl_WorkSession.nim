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

import
  ../Standard/Standard, ../Standard/Standard_Type,
  ../IFSelect/IFSelect_WorkSession, ../IFSelect/IFSelect_ReturnStatus,
  XSControl_TransferWriter

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
  Handle_XSControl_WorkSession* = handle[XSControl_WorkSession]

## ! This WorkSession completes the basic one, by adding :
## ! - use of Controller, with norm selection...
## ! - management of transfers (both ways) with auxiliary classes
## ! TransferReader and TransferWriter
## ! -> these transfers may work with a Context List : its items
## ! are given by the user, according to the transfer to be
## ! i.e. it is interpreted by the Actors
## ! Each item is accessed by a Name

type
  XSControl_WorkSession* {.importcpp: "XSControl_WorkSession",
                          header: "XSControl_WorkSession.hxx", bycopy.} = object of IFSelect_WorkSession ##
                                                                                                  ## !
                                                                                                  ## Clears
                                                                                                  ## binders


proc constructXSControl_WorkSession*(): XSControl_WorkSession {.constructor,
    importcpp: "XSControl_WorkSession(@)", header: "XSControl_WorkSession.hxx".}
proc destroyXSControl_WorkSession*(this: var XSControl_WorkSession) {.
    importcpp: "#.~XSControl_WorkSession()", header: "XSControl_WorkSession.hxx".}
proc ClearData*(this: var XSControl_WorkSession; theMode: Standard_Integer) {.
    importcpp: "ClearData", header: "XSControl_WorkSession.hxx".}
proc SelectNorm*(this: var XSControl_WorkSession; theNormName: Standard_CString): Standard_Boolean {.
    importcpp: "SelectNorm", header: "XSControl_WorkSession.hxx".}
proc SetController*(this: var XSControl_WorkSession;
                   theCtl: handle[XSControl_Controller]) {.
    importcpp: "SetController", header: "XSControl_WorkSession.hxx".}
proc SelectedNorm*(this: XSControl_WorkSession;
                  theRsc: Standard_Boolean = Standard_False): Standard_CString {.
    noSideEffect, importcpp: "SelectedNorm", header: "XSControl_WorkSession.hxx".}
proc NormAdaptor*(this: XSControl_WorkSession): handle[XSControl_Controller] {.
    noSideEffect, importcpp: "NormAdaptor", header: "XSControl_WorkSession.hxx".}
proc Context*(this: XSControl_WorkSession): NCollection_DataMap[
    TCollection_AsciiString, handle[Standard_Transient]] {.noSideEffect,
    importcpp: "Context", header: "XSControl_WorkSession.hxx".}
proc SetAllContext*(this: var XSControl_WorkSession; theContext: NCollection_DataMap[
    TCollection_AsciiString, handle[Standard_Transient]]) {.
    importcpp: "SetAllContext", header: "XSControl_WorkSession.hxx".}
proc ClearContext*(this: var XSControl_WorkSession) {.importcpp: "ClearContext",
    header: "XSControl_WorkSession.hxx".}
proc PrintTransferStatus*(this: XSControl_WorkSession; theNum: Standard_Integer;
                         theWri: Standard_Boolean; theS: var Standard_OStream): Standard_Boolean {.
    noSideEffect, importcpp: "PrintTransferStatus",
    header: "XSControl_WorkSession.hxx".}
proc InitTransferReader*(this: var XSControl_WorkSession; theMode: Standard_Integer) {.
    importcpp: "InitTransferReader", header: "XSControl_WorkSession.hxx".}
proc SetTransferReader*(this: var XSControl_WorkSession;
                       theTR: handle[XSControl_TransferReader]) {.
    importcpp: "SetTransferReader", header: "XSControl_WorkSession.hxx".}
proc TransferReader*(this: XSControl_WorkSession): handle[XSControl_TransferReader] {.
    noSideEffect, importcpp: "TransferReader", header: "XSControl_WorkSession.hxx".}
proc MapReader*(this: XSControl_WorkSession): handle[Transfer_TransientProcess] {.
    noSideEffect, importcpp: "MapReader", header: "XSControl_WorkSession.hxx".}
proc SetMapReader*(this: var XSControl_WorkSession;
                  theTP: handle[Transfer_TransientProcess]): Standard_Boolean {.
    importcpp: "SetMapReader", header: "XSControl_WorkSession.hxx".}
proc Result*(this: XSControl_WorkSession; theEnt: handle[Standard_Transient];
            theMode: Standard_Integer): handle[Standard_Transient] {.noSideEffect,
    importcpp: "Result", header: "XSControl_WorkSession.hxx".}
proc TransferReadOne*(this: var XSControl_WorkSession;
                     theEnts: handle[Standard_Transient]; theProgress: Message_ProgressRange = Message_ProgressRange()): Standard_Integer {.
    importcpp: "TransferReadOne", header: "XSControl_WorkSession.hxx".}
proc TransferReadRoots*(this: var XSControl_WorkSession; theProgress: Message_ProgressRange = Message_ProgressRange()): Standard_Integer {.
    importcpp: "TransferReadRoots", header: "XSControl_WorkSession.hxx".}
proc NewModel*(this: var XSControl_WorkSession): handle[Interface_InterfaceModel] {.
    importcpp: "NewModel", header: "XSControl_WorkSession.hxx".}
proc TransferWriter*(this: XSControl_WorkSession): handle[XSControl_TransferWriter] {.
    noSideEffect, importcpp: "TransferWriter", header: "XSControl_WorkSession.hxx".}
proc SetMapWriter*(this: var XSControl_WorkSession;
                  theFP: handle[Transfer_FinderProcess]): Standard_Boolean {.
    importcpp: "SetMapWriter", header: "XSControl_WorkSession.hxx".}
proc TransferWriteShape*(this: var XSControl_WorkSession; theShape: TopoDS_Shape;
                        theCompGraph: Standard_Boolean = Standard_True; theProgress: Message_ProgressRange = Message_ProgressRange()): IFSelect_ReturnStatus {.
    importcpp: "TransferWriteShape", header: "XSControl_WorkSession.hxx".}
proc TransferWriteCheckList*(this: XSControl_WorkSession): Interface_CheckIterator {.
    noSideEffect, importcpp: "TransferWriteCheckList",
    header: "XSControl_WorkSession.hxx".}
proc Vars*(this: XSControl_WorkSession): handle[XSControl_Vars] {.noSideEffect,
    importcpp: "Vars", header: "XSControl_WorkSession.hxx".}
proc SetVars*(this: var XSControl_WorkSession; theVars: handle[XSControl_Vars]) {.
    importcpp: "SetVars", header: "XSControl_WorkSession.hxx".}
type
  XSControl_WorkSessionbase_type* = IFSelect_WorkSession

proc get_type_name*(): cstring {.importcpp: "XSControl_WorkSession::get_type_name(@)",
                              header: "XSControl_WorkSession.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "XSControl_WorkSession::get_type_descriptor(@)",
    header: "XSControl_WorkSession.hxx".}
proc DynamicType*(this: XSControl_WorkSession): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "XSControl_WorkSession.hxx".}