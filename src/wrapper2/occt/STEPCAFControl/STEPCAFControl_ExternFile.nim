##  Created on: 2000-09-28
##  Created by: Andrey BETENEV
##  Copyright (c) 2000-2014 OPEN CASCADE SAS
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
  ../IFSelect/IFSelect_ReturnStatus, ../Standard/Standard_Boolean,
  ../TDF/TDF_Label, ../Standard/Standard_Transient

discard "forward decl of XSControl_WorkSession"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of TDF_Label"
discard "forward decl of STEPCAFControl_ExternFile"
discard "forward decl of STEPCAFControl_ExternFile"
type
  Handle_STEPCAFControl_ExternFile* = handle[STEPCAFControl_ExternFile]

## ! Auxiliary class serving as container for data resulting
## ! from translation of external file

type
  STEPCAFControl_ExternFile* {.importcpp: "STEPCAFControl_ExternFile",
                              header: "STEPCAFControl_ExternFile.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                        ## !
                                                                                                        ## Creates
                                                                                                        ## an
                                                                                                        ## empty
                                                                                                        ## structure


proc constructSTEPCAFControl_ExternFile*(): STEPCAFControl_ExternFile {.
    constructor, importcpp: "STEPCAFControl_ExternFile(@)",
    header: "STEPCAFControl_ExternFile.hxx".}
proc SetWS*(this: var STEPCAFControl_ExternFile; WS: handle[XSControl_WorkSession]) {.
    importcpp: "SetWS", header: "STEPCAFControl_ExternFile.hxx".}
proc GetWS*(this: STEPCAFControl_ExternFile): handle[XSControl_WorkSession] {.
    noSideEffect, importcpp: "GetWS", header: "STEPCAFControl_ExternFile.hxx".}
proc SetLoadStatus*(this: var STEPCAFControl_ExternFile; stat: IFSelect_ReturnStatus) {.
    importcpp: "SetLoadStatus", header: "STEPCAFControl_ExternFile.hxx".}
proc GetLoadStatus*(this: STEPCAFControl_ExternFile): IFSelect_ReturnStatus {.
    noSideEffect, importcpp: "GetLoadStatus",
    header: "STEPCAFControl_ExternFile.hxx".}
proc SetTransferStatus*(this: var STEPCAFControl_ExternFile; isok: Standard_Boolean) {.
    importcpp: "SetTransferStatus", header: "STEPCAFControl_ExternFile.hxx".}
proc GetTransferStatus*(this: STEPCAFControl_ExternFile): Standard_Boolean {.
    noSideEffect, importcpp: "GetTransferStatus",
    header: "STEPCAFControl_ExternFile.hxx".}
proc SetWriteStatus*(this: var STEPCAFControl_ExternFile;
                    stat: IFSelect_ReturnStatus) {.importcpp: "SetWriteStatus",
    header: "STEPCAFControl_ExternFile.hxx".}
proc GetWriteStatus*(this: STEPCAFControl_ExternFile): IFSelect_ReturnStatus {.
    noSideEffect, importcpp: "GetWriteStatus",
    header: "STEPCAFControl_ExternFile.hxx".}
proc SetName*(this: var STEPCAFControl_ExternFile;
             name: handle[TCollection_HAsciiString]) {.importcpp: "SetName",
    header: "STEPCAFControl_ExternFile.hxx".}
proc GetName*(this: STEPCAFControl_ExternFile): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "GetName", header: "STEPCAFControl_ExternFile.hxx".}
proc SetLabel*(this: var STEPCAFControl_ExternFile; L: TDF_Label) {.
    importcpp: "SetLabel", header: "STEPCAFControl_ExternFile.hxx".}
proc GetLabel*(this: STEPCAFControl_ExternFile): TDF_Label {.noSideEffect,
    importcpp: "GetLabel", header: "STEPCAFControl_ExternFile.hxx".}
type
  STEPCAFControl_ExternFilebase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "STEPCAFControl_ExternFile::get_type_name(@)",
                              header: "STEPCAFControl_ExternFile.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "STEPCAFControl_ExternFile::get_type_descriptor(@)",
    header: "STEPCAFControl_ExternFile.hxx".}
proc DynamicType*(this: STEPCAFControl_ExternFile): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "STEPCAFControl_ExternFile.hxx".}