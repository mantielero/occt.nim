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

import
  ../Standard/Standard, ../Standard/Standard_Handle, ../Draw/Draw_Interpretor,
  ../TColStd/TColStd_HSequenceOfTransient, ../TopTools/TopTools_HSequenceOfShape

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
  XSDRAW* {.importcpp: "XSDRAW", header: "XSDRAW.hxx", bycopy.} = object ## ! Takes variables to/from the DRAW session
                                                                 ## ! Implements
                                                                 ## ProgressIndicator for DRAW
                                                                 ## ! Changes the name under which a command of xstep is known by
                                                                 ## ! Draw. This allows to avoid collisions
                                                                 ## ! To be called before LoadDraw or any other xstep initialisation


proc ChangeCommand*(oldname: Standard_CString; newname: Standard_CString) {.
    importcpp: "XSDRAW::ChangeCommand(@)", header: "XSDRAW.hxx".}
proc RemoveCommand*(oldname: Standard_CString) {.
    importcpp: "XSDRAW::RemoveCommand(@)", header: "XSDRAW.hxx".}
proc LoadSession*(): Standard_Boolean {.importcpp: "XSDRAW::LoadSession(@)",
                                     header: "XSDRAW.hxx".}
proc LoadDraw*(theCommands: var Draw_Interpretor) {.
    importcpp: "XSDRAW::LoadDraw(@)", header: "XSDRAW.hxx".}
proc Execute*(command: Standard_CString; `var`: Standard_CString = ""): Standard_Integer {.
    importcpp: "XSDRAW::Execute(@)", header: "XSDRAW.hxx".}
proc Pilot*(): handle[IFSelect_SessionPilot] {.importcpp: "XSDRAW::Pilot(@)",
    header: "XSDRAW.hxx".}
proc Session*(): handle[XSControl_WorkSession] {.importcpp: "XSDRAW::Session(@)",
    header: "XSDRAW.hxx".}
proc SetController*(control: handle[XSControl_Controller]) {.
    importcpp: "XSDRAW::SetController(@)", header: "XSDRAW.hxx".}
proc Controller*(): handle[XSControl_Controller] {.
    importcpp: "XSDRAW::Controller(@)", header: "XSDRAW.hxx".}
proc SetNorm*(normname: Standard_CString): Standard_Boolean {.
    importcpp: "XSDRAW::SetNorm(@)", header: "XSDRAW.hxx".}
proc Protocol*(): handle[Interface_Protocol] {.importcpp: "XSDRAW::Protocol(@)",
    header: "XSDRAW.hxx".}
proc Model*(): handle[Interface_InterfaceModel] {.importcpp: "XSDRAW::Model(@)",
    header: "XSDRAW.hxx".}
proc SetModel*(model: handle[Interface_InterfaceModel]; file: Standard_CString = "") {.
    importcpp: "XSDRAW::SetModel(@)", header: "XSDRAW.hxx".}
proc NewModel*(): handle[Interface_InterfaceModel] {.
    importcpp: "XSDRAW::NewModel(@)", header: "XSDRAW.hxx".}
proc Entity*(num: Standard_Integer): handle[Standard_Transient] {.
    importcpp: "XSDRAW::Entity(@)", header: "XSDRAW.hxx".}
proc Number*(ent: handle[Standard_Transient]): Standard_Integer {.
    importcpp: "XSDRAW::Number(@)", header: "XSDRAW.hxx".}
proc SetTransferProcess*(TP: handle[Standard_Transient]) {.
    importcpp: "XSDRAW::SetTransferProcess(@)", header: "XSDRAW.hxx".}
proc TransientProcess*(): handle[Transfer_TransientProcess] {.
    importcpp: "XSDRAW::TransientProcess(@)", header: "XSDRAW.hxx".}
proc FinderProcess*(): handle[Transfer_FinderProcess] {.
    importcpp: "XSDRAW::FinderProcess(@)", header: "XSDRAW.hxx".}
proc InitTransferReader*(mode: Standard_Integer) {.
    importcpp: "XSDRAW::InitTransferReader(@)", header: "XSDRAW.hxx".}
proc TransferReader*(): handle[XSControl_TransferReader] {.
    importcpp: "XSDRAW::TransferReader(@)", header: "XSDRAW.hxx".}
proc GetEntity*(name: Standard_CString = ""): handle[Standard_Transient] {.
    importcpp: "XSDRAW::GetEntity(@)", header: "XSDRAW.hxx".}
proc GetEntityNumber*(name: Standard_CString = ""): Standard_Integer {.
    importcpp: "XSDRAW::GetEntityNumber(@)", header: "XSDRAW.hxx".}
proc GetList*(first: Standard_CString = ""; second: Standard_CString = ""): handle[
    TColStd_HSequenceOfTransient] {.importcpp: "XSDRAW::GetList(@)",
                                   header: "XSDRAW.hxx".}
proc FileAndVar*(file: Standard_CString; `var`: Standard_CString;
                def: Standard_CString; resfile: var TCollection_AsciiString;
                resvar: var TCollection_AsciiString): Standard_Boolean {.
    importcpp: "XSDRAW::FileAndVar(@)", header: "XSDRAW.hxx".}
proc MoreShapes*(list: var handle[TopTools_HSequenceOfShape]; name: Standard_CString): Standard_Integer {.
    importcpp: "XSDRAW::MoreShapes(@)", header: "XSDRAW.hxx".}