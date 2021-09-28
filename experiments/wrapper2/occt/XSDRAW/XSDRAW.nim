##  Created on: 1995-03-14
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

discard "forward decl of IFSelect_SessionPilot"
discard "forward decl of XSControl_WorkSession"
discard "forward decl of XSControl_Controller"
discard "forward decl of Interface_Protocol"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of Standard_Transient"
discard "forward decl of Transfer_TransientProcess"
discard "forward decl of Transfer_FinderProcess"
discard "forward decl of XSControl_TransferReader"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of XSDRAW_Functions"
discard "forward decl of XSDRAW_Vars"
type
  Xsdraw* {.importcpp: "XSDRAW", header: "XSDRAW.hxx", bycopy.} = object ## ! Takes variables to/from the DRAW session
                                                                 ## ! Implements
                                                                 ## ProgressIndicator for DRAW
                                                                 ## ! Changes the name under which a command of xstep is known by
                                                                 ## ! Draw. This allows to avoid collisions
                                                                 ## ! To be called before LoadDraw or any other xstep initialisation


proc changeCommand*(oldname: StandardCString; newname: StandardCString) {.
    importcpp: "XSDRAW::ChangeCommand(@)", header: "XSDRAW.hxx".}
proc removeCommand*(oldname: StandardCString) {.
    importcpp: "XSDRAW::RemoveCommand(@)", header: "XSDRAW.hxx".}
proc loadSession*(): bool {.importcpp: "XSDRAW::LoadSession(@)", header: "XSDRAW.hxx".}
proc loadDraw*(theCommands: var DrawInterpretor) {.importcpp: "XSDRAW::LoadDraw(@)",
    header: "XSDRAW.hxx".}
proc execute*(command: StandardCString; `var`: StandardCString = ""): cint {.
    importcpp: "XSDRAW::Execute(@)", header: "XSDRAW.hxx".}
proc pilot*(): Handle[IFSelectSessionPilot] {.importcpp: "XSDRAW::Pilot(@)",
    header: "XSDRAW.hxx".}
proc session*(): Handle[XSControlWorkSession] {.importcpp: "XSDRAW::Session(@)",
    header: "XSDRAW.hxx".}
proc setController*(control: Handle[XSControlController]) {.
    importcpp: "XSDRAW::SetController(@)", header: "XSDRAW.hxx".}
proc controller*(): Handle[XSControlController] {.
    importcpp: "XSDRAW::Controller(@)", header: "XSDRAW.hxx".}
proc setNorm*(normname: StandardCString): bool {.importcpp: "XSDRAW::SetNorm(@)",
    header: "XSDRAW.hxx".}
proc protocol*(): Handle[InterfaceProtocol] {.importcpp: "XSDRAW::Protocol(@)",
    header: "XSDRAW.hxx".}
proc model*(): Handle[InterfaceInterfaceModel] {.importcpp: "XSDRAW::Model(@)",
    header: "XSDRAW.hxx".}
proc setModel*(model: Handle[InterfaceInterfaceModel]; file: StandardCString = "") {.
    importcpp: "XSDRAW::SetModel(@)", header: "XSDRAW.hxx".}
proc newModel*(): Handle[InterfaceInterfaceModel] {.
    importcpp: "XSDRAW::NewModel(@)", header: "XSDRAW.hxx".}
proc entity*(num: cint): Handle[StandardTransient] {.importcpp: "XSDRAW::Entity(@)",
    header: "XSDRAW.hxx".}
proc number*(ent: Handle[StandardTransient]): cint {.importcpp: "XSDRAW::Number(@)",
    header: "XSDRAW.hxx".}
proc setTransferProcess*(tp: Handle[StandardTransient]) {.
    importcpp: "XSDRAW::SetTransferProcess(@)", header: "XSDRAW.hxx".}
proc transientProcess*(): Handle[TransferTransientProcess] {.
    importcpp: "XSDRAW::TransientProcess(@)", header: "XSDRAW.hxx".}
proc finderProcess*(): Handle[TransferFinderProcess] {.
    importcpp: "XSDRAW::FinderProcess(@)", header: "XSDRAW.hxx".}
proc initTransferReader*(mode: cint) {.importcpp: "XSDRAW::InitTransferReader(@)",
                                    header: "XSDRAW.hxx".}
proc transferReader*(): Handle[XSControlTransferReader] {.
    importcpp: "XSDRAW::TransferReader(@)", header: "XSDRAW.hxx".}
proc getEntity*(name: StandardCString = ""): Handle[StandardTransient] {.
    importcpp: "XSDRAW::GetEntity(@)", header: "XSDRAW.hxx".}
proc getEntityNumber*(name: StandardCString = ""): cint {.
    importcpp: "XSDRAW::GetEntityNumber(@)", header: "XSDRAW.hxx".}
proc getList*(first: StandardCString = ""; second: StandardCString = ""): Handle[
    TColStdHSequenceOfTransient] {.importcpp: "XSDRAW::GetList(@)",
                                  header: "XSDRAW.hxx".}
proc fileAndVar*(file: StandardCString; `var`: StandardCString; def: StandardCString;
                resfile: var TCollectionAsciiString;
                resvar: var TCollectionAsciiString): bool {.
    importcpp: "XSDRAW::FileAndVar(@)", header: "XSDRAW.hxx".}
proc moreShapes*(list: var Handle[TopToolsHSequenceOfShape]; name: StandardCString): cint {.
    importcpp: "XSDRAW::MoreShapes(@)", header: "XSDRAW.hxx".}

























